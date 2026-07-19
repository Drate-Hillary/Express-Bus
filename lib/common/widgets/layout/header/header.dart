import 'package:express_administrator/common/widgets/images/rounded_image.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/enums.dart';
import 'package:express_administrator/utils/constants/image_strings.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:express_administrator/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key, this.scaffoldKey});

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border(bottom: BorderSide(color: AppColors.grey, width: 1)),
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppSize.sm,
        horizontal: AppSize.md,
      ),
      child: AppBar(
        leading: !DeviceUtility.isDesktopScreen(context)
            ? IconButton(
                onPressed: ()=> scaffoldKey?.currentState?.openDrawer(),
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedPanelLeftClose,
                  size: AppSize.iconMd,
                  color: AppColors.blackColor,
                ),
              )
            : null,

        title: DeviceUtility.isDesktopScreen(context)
            ? SizedBox(
                width: 350,
                height: 38,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedSearch01,
                        color: AppColors.blackColor,
                        size: 20,
                      ),
                    ),
                    hintText: 'Search here...',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            : null,

        actions: [
          // search icon for mobile
          if (!DeviceUtility.isDesktopScreen(context))
            IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: HugeIcon(
                  icon: HugeIcons.strokeRoundedSearch01,
                  color: AppColors.blackColor,
                  size: 20,
                ),
              ),
            ),

          // notification icon
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedNotification01,
              color: AppColors.blackColor,
              size: 20,
            ),
          ),

          const SizedBox(width: AppSize.spaceBtwSections / 2),

          // Profile image
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedImage(
                imageType: ImageType.asset,
                image: AppImageStrings.user,
                width: 48,
                height: 48,
                padding: 4,
                borderRadius: AppSize.borderRadiusFull,
              ),
              const SizedBox(width: AppSize.sm),
              if (!DeviceUtility.isMobileScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hillary',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'hillary@example.com',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(DeviceUtility.getAppBarHeight() + 15);
}
