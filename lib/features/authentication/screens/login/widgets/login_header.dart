import 'package:express_administrator/utils/constants/image_strings.dart';
import 'package:express_administrator/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:express_administrator/utils/constants/sizes.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(AppImageStrings.logo),
            width: 100,
            height: 100,
          ),
          const SizedBox(height: AppSize.spaceBtwSections),
          Text(
            TextStrings.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            TextStrings.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
