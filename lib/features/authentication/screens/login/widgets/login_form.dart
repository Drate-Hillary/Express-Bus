import 'package:express_administrator/routes/routes.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:express_administrator/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppSize.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                  width: 16, // Force the width
                  height: 16, // Force the height
                  child: Center(
                    child: HugeIcon(
                      icon: HugeIcons.strokeRoundedSent02,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                labelText: TextStrings.emailAddress,
              ),
            ),
    
            const SizedBox(height: AppSize.spaceBtwInputFields),
    
            // Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                  width: 16,
                  height: 16,
                  child: Center(
                    child: HugeIcon(
                      icon: HugeIcons.strokeRoundedCirclePassword,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                labelText: TextStrings.password,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.eye_slash),
                ),
              ),
            ),
    
            const SizedBox(
              height: AppSize.spaceBtwInputFields / 2,
            ),
    
            // Remember me and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}, fillColor: WidgetStateProperty.all(AppColors.primaryColor),),
                    Text(TextStrings.rememberMe),
                  ],
                ),
    
                // Forgot Password
                TextButton(
                  onPressed: ()=> Get.toNamed(AppRoutes.forgotPassword),
                  style: TextButton.styleFrom(
                    overlayColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                  ),
                  child: Text(TextStrings.forgotPassword, style: Theme.of(context).textTheme.titleSmall,),
                ),
              ],
            ),
    
            const SizedBox(height: AppSize.spaceBtwSections,),
    
            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: Text(TextStrings.signIn)),
            )
          ],
        ),
      ),
    );
  }
}
