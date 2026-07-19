import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= AppSize.desktopScreenSize) {
      return desktop;
    } else if (screenWidth < AppSize.desktopScreenSize && screenWidth >= AppSize.tabletScreenSize) {
      return tablet;
    } else {
      return mobile;
    }
  }
}