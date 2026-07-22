import 'package:express_administrator/common/widgets/layout/templates/site_layout.dart';
import 'package:express_administrator/features/authentication/screens/login/responsive_screens/login_desktop_tablet.dart';
import 'package:express_administrator/features/authentication/screens/login/responsive_screens/login_mobile.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteLayout(useLayout: false, desktop: LoginDesktopTablet(), mobile: LoginMobile());
  }
}