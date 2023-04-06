import 'package:flutter/material.dart';

// widget for defining single drawer option for portrait mode
class DrawerOptionMobilePortrait extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOptionMobilePortrait({
    Key key,
    this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: <Widget>[
          Icon(
            iconData,
            size: 25,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            title,
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}

// widget to create a single drawer-option for mobile for landscape mode
class DrawerOptionMobileLandscape extends StatelessWidget {
  final IconData iconData;
  const DrawerOptionMobileLandscape({Key key, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Icon(iconData),
    );
  }
}
