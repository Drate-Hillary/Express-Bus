import 'package:express_administrator/common/widgets/layout/templates/login_template.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordDesktopTablet extends StatelessWidget {
  const ResetPasswordDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? '';
    return LoginTemplate(child: Column(
      children: [
        Text(email)
      ]
    ));
  }
}