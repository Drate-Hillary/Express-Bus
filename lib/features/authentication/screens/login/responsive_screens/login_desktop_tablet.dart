import 'package:express_administrator/common/widgets/layout/templates/login_template.dart';
import 'package:express_administrator/features/authentication/screens/login/widgets/login_form.dart';
import 'package:express_administrator/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';

class LoginDesktopTablet extends StatelessWidget {
  const LoginDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
      child: Column(
        children: [
          // Header
          LoginHeader(),

          // Form
          LoginForm(),
        ],
      ),
    );
  }
}
