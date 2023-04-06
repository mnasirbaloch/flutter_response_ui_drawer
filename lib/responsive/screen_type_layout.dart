import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';
import 'package:responsive_architecture/responsive/responsive_builder.dart';

// widget which contains layout for different screen like mobile,tablet and desktop
// It will use ResponsiveBuilder (our own widget) to return the layout according to screen type
class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ScreenTypeLayout({
    Key key,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // using responsive builder to get sizing info and return relative layout
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
          if (tablet != null) {
            return tablet;
          }
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
          if (desktop != null) {
            return desktop;
          }
        }

        return mobile;
      },
    );
  }
}
