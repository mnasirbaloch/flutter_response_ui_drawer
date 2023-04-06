// Widget used for app-drawer for tablet devies.
// different layout provided for different oreintation for tablet
import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  const AppDrawerTabletPortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}

class AppDrawerTabletLandscape extends StatelessWidget {
  const AppDrawerTabletLandscape({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      // remove height if you want drawer to occupy entire space
      height: 450,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}
