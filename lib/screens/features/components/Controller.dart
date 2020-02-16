import 'package:app/screens/features/components/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturesController {
  final dynamic context;
  FeaturesController(this.context);
  final items = ['Standard', 'Premium', 'Team Room'];
  final List<String> gpu = [
    'GTX 1070Ti 8GB',
    'RTX 2060S 8GB',
    'RTX 2070S 11GB'
  ];

  gradiet(int index) {
    final _standardGradient = [Colors.orange[900], Colors.black54];
    final _premiumGradient = [Colors.grey, Colors.grey[800]];
    final _teamRoomGradient = [Colors.amberAccent[700], Colors.grey];
    final _gradientColors = [
      _standardGradient,
      _premiumGradient,
      _teamRoomGradient
    ];
    return _gradientColors[index];
  }

  iconTitle(int index) {
    final dynamic _standardColor = Theme.of(context).secondaryHeaderColor;
    const dynamic _premiumColor = const Color(0xFFA8A9AD);
    const dynamic _teamRoomColor = const Color(0xFFDAA520);
    final List<dynamic> color = [_standardColor, _premiumColor, _teamRoomColor];
    return Icon(
      MaterialCommunityIcons.star_three_points,
      color: color[index],
      size: 40,
    );
  }

  price(int index) {
    const int _standard = 10;
    const int _premium = 15;
    const int _teamRoom = 20;

    const List<int> price = [_standard, _premium, _teamRoom];
    return price[index];
  }

  dataTableElements(int index) {}

  dataTableRow(int index, int rowNumber, icon, bool avaliable) {
    final List<String> dataRowTitle = [
      Constants().monitor[index],
      Constants().processor[index],
      Constants().memory[index],
      Constants().mouse[index],
      Constants().keyboard[index],
      Constants().headphone[index],
      'Internet Browsing',
      'HD Streaming',
      'Gaming Chair'
    ];

    return DataRow(cells: <DataCell>[
      DataCell(
        dataTableRowIcon(
            Constants().rowIcons[rowNumber], dataRowTitle[rowNumber]),
      ),
      DataCell(dataTableRowAvaliableFeature(index, rowNumber)),
    ]);
  }

  dataTableRowAvaliableFeature(int index, int rowNumber) {
    if (rowNumber > 6 && index == 0) {
      return Icon(FontAwesome.times, color: Colors.white54);
    } else {
      return Icon(FontAwesome.check, color: Colors.white);
    }
  }

  dataTableRowIcon(IconData iconVal, String rowVal) {
    return ListTile(
      leading: Icon(iconVal, color: Colors.white),
      title: Text(
        rowVal,
        style: TextStyle(
          fontSize: ScreenUtil().setSp(30),
          color: Colors.white,
        ),
      ),
    );
  }
}
