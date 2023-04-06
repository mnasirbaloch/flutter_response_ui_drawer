import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/sizing_information.dart';
import 'package:responsive_architecture/utils/ui_utils.dart';

// A widget which contain a function which has buildcontext and sizing-info used for responsivenss
// using that we will return the layout according to device type
class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    SizingInformation sizingInformation,
  ) builder;
  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // returning layoutbuilder because we get boxConstraints the available size for child widet
    return LayoutBuilder(builder: (context, boxConstraints) {
      var mediaQuery = MediaQuery.of(context);
      var sizingInformation = SizingInformation(
        // using method defined in utils which return device screen type by checking shortest side of device
        deviceScreenType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize:
            Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
      );
      // returning a function by passing context and sizing-info
      return builder(context, sizingInformation);
    });
  }
}
