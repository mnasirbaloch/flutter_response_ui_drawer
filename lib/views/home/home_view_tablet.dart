import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer.dart';

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationLayout(
      portrait: HomeViewTabletPortrait(),
      landscape: HomeViewTabletLandscape(),
    );
  }
}

class HomeViewTabletPortrait extends StatelessWidget {
  const HomeViewTabletPortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container(),
      ),
      AppDrawer()
    ];
    return Scaffold(
      body: Column(
        children: children,
      ),
    );
  }
}

class HomeViewTabletLandscape extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeViewTabletLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: IconButton(
              icon: Icon(Icons.menu, size: 30),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          )
        ],
      ),
    );
  }
}
