import 'package:express_administrator/features/authentication/screens/reset_password/widget/reset_password_widget.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordMobile extends StatelessWidget {
  const ResetPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? "";
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultSpace),
          child: ResetPasswordWidget(email: email,),
        ),
      )
    );
  }
}