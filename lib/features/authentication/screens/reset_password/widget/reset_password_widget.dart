import 'package:express_administrator/routes/routes.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/image_strings.dart';
import 'package:express_administrator/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:express_administrator/utils/constants/sizes.dart';


class ResetPasswordWidget extends StatelessWidget {
  const ResetPasswordWidget({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => Get.toNamed(AppRoutes.login),
              icon: HugeIcon(icon: HugeIcons.strokeRoundedCancel01, size: 20),
            ),
          ],
        ),
    
        const SizedBox(height: AppSize.spaceBtwItems / 2),
    
        // Image
        Image(
          image: AssetImage(AppImageStrings.deliveredEmail),
          width: 300,
          height: 300,
        ),
    
        // Title, email and sub title
        Text(
          TextStrings.changePasswordTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: AppSize.spaceBtwItems / 2),
        Text(
          email,
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(color: AppColors.primaryColor),
        ),
        const SizedBox(height: AppSize.spaceBtwSections / 2),
        Text(
          TextStrings.changePasswordSubTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: AppSize.spaceBtwSections),
    
        // Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 200,
              child: OutlinedButton(
                onPressed: () => Get.offAllNamed(AppRoutes.login),
                child: Text(TextStrings.back),
              ),
            ),
    
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: (){}, child: Text(TextStrings.resendEmail))
            )
          ],
        ),
      ],
    );
  }
}
