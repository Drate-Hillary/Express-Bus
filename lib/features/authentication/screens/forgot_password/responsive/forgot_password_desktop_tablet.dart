import 'package:express_administrator/common/widgets/layout/templates/login_template.dart';
import 'package:express_administrator/features/authentication/screens/forgot_password/widget/header_and_form.dart';
import 'package:flutter/material.dart';

class ForgotpasswordDesktopTablet extends StatelessWidget {
  const ForgotpasswordDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
      child: HeaderAndForm(),
    );
  }
}
