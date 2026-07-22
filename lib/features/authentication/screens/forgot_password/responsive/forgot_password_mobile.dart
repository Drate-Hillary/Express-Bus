import 'package:express_administrator/features/authentication/screens/forgot_password/widget/header_and_form.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ForgotPasswordMobile extends StatelessWidget {
  const ForgotPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppSize.defaultSpace),
            child: HeaderAndForm(),
          ),
        ),
      ),
    );
  }
}
