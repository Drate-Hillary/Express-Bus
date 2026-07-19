import 'package:express_administrator/common/widgets/responsive/responsive_design.dart';
import 'package:express_administrator/common/widgets/responsive/screens/desktop.dart';
import 'package:express_administrator/common/widgets/responsive/screens/mobile.dart';
import 'package:express_administrator/common/widgets/responsive/screens/tablet.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({
    super.key, 
    this.desktop, 
    this.tablet, 
    this.mobile, 
    this.useLayout = true,
  });

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: useLayout ? Desktop(body: desktop) : desktop ?? const SizedBox.shrink(),
      tablet: useLayout ? Tablet(body: tablet ?? desktop) : tablet ?? desktop ?? const SizedBox.shrink(),
      mobile: useLayout ? Mobile(body: mobile ?? desktop) : mobile ?? desktop ?? const SizedBox.shrink(),
    );
  }
}
