import 'package:express_administrator/common/widgets/layout/templates/site_layout.dart';
import 'package:express_administrator/features/authentication/screens/reset_password/responsive/reset_password_desktop_tablet.dart';
import 'package:express_administrator/features/authentication/screens/reset_password/responsive/reset_password_mobile.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteLayout(
      useLayout: false,
      desktop: ResetPasswordDesktopTablet(),
      mobile: ResetPasswordMobile(),
    );
  }
}
