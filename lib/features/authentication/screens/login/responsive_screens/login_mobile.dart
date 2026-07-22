import 'package:express_administrator/features/authentication/screens/login/widgets/login_form.dart';
import 'package:express_administrator/features/authentication/screens/login/widgets/login_header.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppSize.defaultSpace),
            child: Column(children: [LoginHeader(), LoginForm()]),
          ),
        ),
      ),
    );
  }
}
