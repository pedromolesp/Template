import 'package:flutter/foundation.dart';

enum KeysEnum {
  publicArea(Key('publicArea')),
  privateArea(Key('privateArea')),
  newVersion(Key('newVersion')),
  todo(Key('todo'));

  const KeysEnum(this.key);
  final Key key;
}
