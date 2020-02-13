import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Constants {
  final List<String> monitor = [
    '[144 HZ] MSI Optix',
    '[144 HZ] BenQ XL24',
    '[244 HZ] Samsung'
  ];
  final List<String> processor = [
    'Intel I5 9400F',
    'Ryzen 5 3600',
    'Ryzen 5 3600X'
  ];
  final List<String> memory = ['1x 8GB RAM', '2x 8GB RAM', '2x 8GB RAM'];
  final List<String> mouse = [
    'Logictech G403',
    'Logitech G502 Hero',
    'SteelSeries Rival 600'
  ];
  final List<String> keyboard = [
    'Redragon K53',
    'Corsair K63',
    'SteelSeries Apex Pro'
  ];
  final List<String> headphone = [
    'HyperX Cloud',
    'Logitech Cloud',
    'Razer Cloud'
  ];

  final List rowIcons = [
    Foundation.monitor,
    Icons.memory,
    FontAwesome5Solid.memory,
    Entypo.mouse,
    Entypo.keyboard,
    Icons.headset_mic,
    Icons.public,
    Icons.video_label,
    FontAwesome5Solid.chair
  ];
}
