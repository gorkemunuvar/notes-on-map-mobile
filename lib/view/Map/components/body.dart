import 'top_row_buttons.dart';
import 'bottom_row_buttons.dart';
import 'flutter_map_component.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key;
  Body(this._key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMapComponent(),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
            child: TopRowButtons(_key),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: BottomRowButtons(),
          ),
        )
      ],
    );
  }
}
