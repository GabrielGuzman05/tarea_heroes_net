import 'package:flutter/material.dart';

import 'package:tarea_heroes_net/src/utils/hex_to_color_util.dart';

final Map<String, IconData> _iconos = <String, IconData>{
  "accessibility_new": Icons.accessibility_new,
  "ac_unit": Icons.ac_unit,
  "android": Icons.android,
  "healing": Icons.healing,
  "access_time": Icons.access_time,
  "monetization_on": Icons.monetization_on,
  "offline_bolt": Icons.offline_bolt,
  "title": Icons.title,
  "library_music": Icons.library_music,
};

Icon getIcon(String iconName, String color) {
  return Icon(_iconos[iconName], color: Color(hexToColor(color)));
}