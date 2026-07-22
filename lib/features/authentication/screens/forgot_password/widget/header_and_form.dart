import 'package:express_administrator/routes/routes.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:express_administrator/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class HeaderAndForm extends StatelessWidget {
  const HeaderAndForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // header
        IconButton(
          onPressed: () => Get.back(),
          icon: HugeIcon(icon: HugeIcons.strokeRoundedArrowLeft02, size: 20),
        ),
        const SizedBox(height: AppSize.spaceBtwItems),
        Text(
          TextStrings.forgotPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          TextStrings.forgotPasswordSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: AppSize.spaceBtwSections),
    
        // form
        Form(
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedSent02,
                  color: AppColors.blackColor,
                ),
              ),
              labelText: TextStrings.emailAddress,
            ),
          ),
        ),
    
        const SizedBox(height: AppSize.spaceBtwSections),
    
        // submit button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.toNamed(AppRoutes.resetPassword, arguments: 'some@gmail.com'),
            child: Text(TextStrings.submit),
          ),
        ),
      ],
    );
  }
}
