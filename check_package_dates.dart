import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:yaml/yaml.dart';

// ANSI colors
const red = '\x1B[31m';
const orange = '\x1B[33m';
const yellow = '\x1B[93m';
const blue = '\x1B[34m';
const green = '\x1B[32m';
const reset = '\x1B[0m';

class PackageInfo {
  final String name;
  final String version;
  final DateTime published;
  final bool isOutdated;
  final String icon;
  final String color;
  final String ageText;

  PackageInfo({
    required this.name,
    required this.version,
    required this.published,
    required this.isOutdated,
    required this.icon,
    required this.color,
    required this.ageText,
  });
}

String formatAge(DateTime published) {
  final now = DateTime.now();
  final duration = now.difference(published);
  final years = (duration.inDays / 365).floor();
  final months = ((duration.inDays % 365) / 30).floor();

  if (years > 0 && months > 0) return '$years años, $months meses';
  if (years > 0) return '$years años';
  if (months > 0) return '$months meses';
  return '${duration.inDays} días';
}

Future<void> main() async {
  final file = File('pubspec.lock');

  if (!await file.exists()) {
    print('No se encontró pubspec.lock');
    return;
  }

  final content = await file.readAsString();
  final doc = loadYaml(content);

  final packages = <String, String>{};

  if (doc is YamlMap && doc.containsKey('packages')) {
    final pkgs = doc['packages'] as YamlMap;
    for (final entry in pkgs.entries) {
      final name = entry.key;
      final value = entry.value as YamlMap;

      final version = value['version'];
      final source = value['source'];

      if (version != null && source == 'hosted') {
        packages[name] = version;
      }
    }
  }

  if (packages.isEmpty) {
    print('No se encontraron paquetes alojados en pub.dev.');
    return;
  }

  final formatter = DateFormat('yyyy-MM-dd');
  final List<PackageInfo> packageInfos = [];

  print('\n⏳ Consultando información de pub.dev...\n');

  final total = packages.length;
  var index = 0;

  for (final entry in packages.entries) {
    index++;
    final percent = ((index / total) * 100).toStringAsFixed(0);
    stdout.write('\r⏳ Revisando paquete $index de $total ($percent%)...     ');

    final name = entry.key;
    final version = entry.value;
    final url = 'https://pub.dev/api/packages/$name';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final versions = data['versions'] as List;

        final matchedVersion = versions.firstWhere(
          (v) => v['version'] == version,
          orElse: () => null,
        );

        final latestVersion = versions.last['version'];

        if (matchedVersion != null) {
          final published = DateTime.parse(matchedVersion['published']);
          final isOutdated = version != latestVersion;

          final now = DateTime.now();
          final diffDays = now.difference(published).inDays;
          final ageText = formatAge(published);

          String icon = '';
          String color = reset;

          if (diffDays > 730) {
            icon = '🔴';
            color = red;
          } else if (diffDays > 365) {
            icon = '🟠';
            color = orange;
          } else if (diffDays > 180) {
            icon = '🟡';
            color = yellow;
          } else if (diffDays > 90) {
            icon = '🔵';
            color = blue;
          } else {
            icon = '🟢';
            color = green;
          }

          if (isOutdated) {
            icon += ' ⬆️';
          }

          packageInfos.add(PackageInfo(
            name: name,
            version: version,
            published: published,
            isOutdated: isOutdated,
            icon: icon,
            color: color,
            ageText: ageText,
          ));
        } else {
          print('\n• $name $version → ❌ versión no encontrada en pub.dev');
        }
      } else {
        print(
            '\n• $name → ⚠️ error al consultar pub.dev (${response.statusCode})');
      }
    } catch (e) {
      print('\n• $name → ⚠️ error: $e');
    }
  }

  // Ordenar
  packageInfos.sort((a, b) => a.published.compareTo(b.published));

  // Limpia línea de progreso
  stdout.write('\r${' ' * 50}\r');

  print('\n📦 Fechas de publicación de paquetes (ordenado por antigüedad):\n');

  // Contadores
  int criticosConUpdate = 0, criticosSinUpdate = 0;
  int viejosConUpdate = 0, viejosSinUpdate = 0;
  int semiViejosConUpdate = 0, semiViejosSinUpdate = 0;
  int recientesConUpdate = 0, recientesSinUpdate = 0;
  int actualizados = 0;

  for (final pkg in packageInfos) {
    final formattedDate = formatter.format(pkg.published);
    print(
        '• ${pkg.icon} ${pkg.name} ${pkg.version} → $formattedDate  ${pkg.color}(${pkg.ageText})$reset');

    final diffDays = DateTime.now().difference(pkg.published).inDays;
    final hasUpdate = pkg.isOutdated;

    if (diffDays > 730) {
      hasUpdate ? criticosConUpdate++ : criticosSinUpdate++;
    } else if (diffDays > 365) {
      hasUpdate ? viejosConUpdate++ : viejosSinUpdate++;
    } else if (diffDays > 180) {
      hasUpdate ? semiViejosConUpdate++ : semiViejosSinUpdate++;
    } else if (diffDays > 90) {
      hasUpdate ? recientesConUpdate++ : recientesSinUpdate++;
    } else {
      actualizados++;
    }
  }

  print('\n✅ Resumen:\n');
  print('🔴 Críticos (+2 años): ${criticosSinUpdate + criticosConUpdate}');
  print('   • Sin updates: $criticosSinUpdate');
  print('   • Actualizables: $criticosConUpdate');
  print('🟠 Obsoletos (+1 año): ${viejosSinUpdate + viejosConUpdate}');
  print('   • Sin updates: $viejosSinUpdate');
  print('   • Actualizables: $viejosConUpdate');
  print(
      '🟡 Poco mantenimiento (+6 meses): ${semiViejosSinUpdate + semiViejosConUpdate}');
  print('   • Sin updates: $semiViejosSinUpdate');
  print('   • Actualizables: $semiViejosConUpdate');
  print('🔵 Recientes (+3 meses): ${recientesSinUpdate + recientesConUpdate}');
  print('   • Sin updates: $recientesSinUpdate');
  print('   • Actualizables: $recientesConUpdate');
  print('🟢 Actualizados: $actualizados');
}
