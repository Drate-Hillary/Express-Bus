import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:express_administrator/common/styles/spacing_style.dart';


class LoginTemplate extends StatelessWidget {
  const LoginTemplate({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightContainer,
      body: Center(
        child: SizedBox(
          width: 500,
          child: SingleChildScrollView(
            child: Container(
              padding: SpacingStyle.paddingWithAppBarHeight,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                border: Border.all(color: AppColors.lightGrey),
                borderRadius: BorderRadius.circular(AppSize.cardRadiusMd),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}