import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:yaml/yaml.dart';

// Colores ANSI
const red = '\x1B[31m';
const orange = '\x1B[33m';
const yellow = '\x1B[93m';
const blue = '\x1B[34m';
const green = '\x1B[32m';
const reset = '\x1B[0m';

final formatter = DateFormat('yyyy-MM-dd');

// Funciones de estilo
String getColorAndIcon(int diffDays, bool isOutdated) {
  if (diffDays > 730) return '🔴${isOutdated ? ' ⬆' : ''}';
  if (diffDays > 365) return '🟠${isOutdated ? ' ⬆' : ''}';
  if (diffDays > 180) return '🟡${isOutdated ? ' ⬆' : ''}';
  if (diffDays > 90) return '🔵${isOutdated ? ' ⬆' : ''}';
  return '🟢';
}

String getColorCode(int diffDays) {
  if (diffDays > 730) return red;
  if (diffDays > 365) return orange;
  if (diffDays > 180) return yellow;
  if (diffDays > 90) return blue;
  return green;
}

String formatAge(DateTime published) {
  final now = DateTime.now();
  final duration = now.difference(published);
  final years = (duration.inDays / 365).floor();
  final months = ((duration.inDays % 365) / 30).floor();

  if (years > 0 && months > 0) return '$years año(s), $months mes(es)';
  if (years > 0) return '$years año(s)';
  if (months > 0) return '$months mes(es)';
  return '${duration.inDays} día(s)';
}

Future<void> main() async {
  final pubspecFile = File('pubspec.yaml');
  final lockFile = File('pubspec.lock');

  if (!await pubspecFile.exists() || !await lockFile.exists()) {
    print(
        '⚠️ Asegúrate de tener pubspec.yaml y pubspec.lock en el directorio.');
    return;
  }

  final pubspecContent = loadYaml(await pubspecFile.readAsString());
  final lockContent = loadYaml(await lockFile.readAsString());

  final directDeps = <String>{};
  final pubspecDeps = [
    'dependencies',
    'dev_dependencies',
    'dependency_overrides'
  ];
  for (final section in pubspecDeps) {
    if (pubspecContent[section] is YamlMap) {
      directDeps
          .addAll((pubspecContent[section] as YamlMap).keys.cast<String>());
    }
  }

  final allPackages = lockContent['packages'] as YamlMap;
  final directPackages = <String, String>{};
  final transitivePackages = <String, String>{};

  for (final entry in allPackages.entries) {
    final name = entry.key;
    final details = entry.value;
    final version = details['version'];
    final source = details['source'];

    if (source == 'hosted') {
      if (directDeps.contains(name)) {
        directPackages[name] = version;
      } else {
        transitivePackages[name] = version;
      }
    }
  }

  Future<void> analyzePackages(
      Map<String, String> packages, String title) async {
    final total = packages.length;
    var index = 0;

    int critCon = 0, critSin = 0;
    int viejoCon = 0, viejoSin = 0;
    int semiCon = 0, semiSin = 0;
    int recCon = 0, recSin = 0;
    int actualizados = 0;

    print('\n📦 $title:\n');

    final entries = <Map<String, dynamic>>[];

    for (final entry in packages.entries) {
      index++;
      final percent = ((index / total) * 100).toStringAsFixed(0);
      stdout.write('\r⏳ $index/$total ($percent%) procesado...     ');

      final name = entry.key;
      final version = entry.value;

      try {
        final url = 'https://pub.dev/api/packages/$name';
        final response = await http.get(Uri.parse(url));
        if (response.statusCode != 200) {
          entries.add({
            'published': DateTime(2100),
            'line': '• $name $version → ⚠️ Error ${response.statusCode}'
          });
          continue;
        }

        final data = jsonDecode(response.body);
        final versions = data['versions'] as List;
        final latestVersion = versions.last['version'];

        final matched = versions.firstWhere(
          (v) => v['version'] == version,
          orElse: () => null,
        );

        if (matched == null) {
          entries.add({
            'published': DateTime(2100),
            'line': '• $name $version → ❌ versión no encontrada'
          });
          continue;
        }

        final published = DateTime.parse(matched['published']);
        final diffDays = DateTime.now().difference(published).inDays;
        final outdated = version != latestVersion;
        final icon = getColorAndIcon(diffDays, outdated);
        final color = getColorCode(diffDays);
        final age = formatAge(published);
        final dateStr = formatter.format(published);

        entries.add({
          'published': published,
          'line': '• $icon $name $version → $dateStr  $color($age)$reset',
        });

        if (diffDays > 730)
          outdated ? critCon++ : critSin++;
        else if (diffDays > 365)
          outdated ? viejoCon++ : viejoSin++;
        else if (diffDays > 180)
          outdated ? semiCon++ : semiSin++;
        else if (diffDays > 90)
          outdated ? recCon++ : recSin++;
        else
          actualizados++;
      } catch (e) {
        entries.add({
          'published': DateTime(2100),
          'line': '• $name $version → ⚠️ error: $e'
        });
      }
    }

    stdout.write('\r${' ' * 60}\r');

    // Ordenar por fecha de publicación (más antiguos primero)
    entries.sort((a, b) => a['published'].compareTo(b['published']));

    // Imprimir
    for (final entry in entries) {
      print(entry['line']);
    }

    // Resumen
    print('\n✅ Resumen para $title:\n');
    print('🔴 Críticos (> 2 años): ${critCon + critSin}');
    print('   • Sin updates: $critSin');
    print('   • Actualizables: $critCon');
    print('🟠 Obsoletos (> 1 año): ${viejoCon + viejoSin}');
    print('   • Sin updates: $viejoSin');
    print('   • Actualizables: $viejoCon');
    print('🟡 Poco mantenimiento (> 6 meses): ${semiCon + semiSin}');
    print('   • Sin updates: $semiSin');
    print('   • Actualizables: $semiCon');
    print('🔵 Recientes (> 3 meses): ${recCon + recSin}');
    print('   • Sin updates: $recSin');
    print('   • Actualizables: $recCon');
    print('🟢 Actualizados (≤ 3 meses): $actualizados');
  }

  await analyzePackages(directPackages, 'Dependencias directas');
  await analyzePackages(transitivePackages, 'Dependencias transitivas');
}
