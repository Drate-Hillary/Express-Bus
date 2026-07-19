import 'package:express_administrator/common/widgets/images/circular_image.dart';
import 'package:express_administrator/common/widgets/layout/sidebars/menu/menu_item.dart';
import 'package:express_administrator/routes/routes.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/image_strings.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border(
            right: BorderSide(width: 1, color: AppColors.lightGrey),
          ),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
              // logo
              CircularImage(
                width: 100,
                height: 100,
                backgroundColor: Colors.transparent,
                image: AppImageStrings.user,
              ),

              SizedBox(height: AppSize.spaceBtwSections),

              // menu
              Padding(
                padding: EdgeInsets.all(AppSize.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Menu",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2),
                    ),

                    SizedBox(height: AppSize.spaceBtwItems / 2),
                    // menu items
                    MenuItem(
                      route: AppRoutes.dashboard,
                      iconData: HugeIcons.strokeRoundedDashboardCircleSettings,
                      itemName: "Overview",
                    ),

                    MenuItem(
                      route: AppRoutes.corridors,
                      iconData: HugeIcons.strokeRoundedRoute02,
                      itemName: "Corridors",
                    ),

                    MenuItem(
                      route: AppRoutes.fleet,
                      iconData: HugeIcons.strokeRoundedBus01,
                      itemName: "Fleets/Bus",
                    ),

                    MenuItem(
                      route: AppRoutes.schedules,
                      iconData: HugeIcons.strokeRoundedNote02,
                      itemName: "Schedules",
                    ),

                    MenuItem(
                      route: AppRoutes.qrManager,
                      iconData: HugeIcons.strokeRoundedQrCode,
                      itemName: "QR manager",
                    ),

                    MenuItem(
                      route: AppRoutes.notification,
                      iconData: HugeIcons.strokeRoundedNotificationSquare,
                      itemName: "Notification",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
