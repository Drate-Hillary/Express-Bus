import 'package:express_administrator/common/widgets/layout/templates/site_layout.dart';
import 'package:express_administrator/features/authentication/screens/forgot_password/responsive/forgot_password_desktop_tablet.dart';
import 'package:express_administrator/features/authentication/screens/forgot_password/responsive/forgot_password_mobile.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteLayout(useLayout: false, desktop: ForgotpasswordDesktopTablet(), mobile: ForgotPasswordMobile(),);
  }
}