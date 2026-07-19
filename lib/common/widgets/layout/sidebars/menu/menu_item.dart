import 'package:express_administrator/common/widgets/layout/sidebars/sidebar_controller.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:express_administrator/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.route,
    required this.iconData,
    required this.itemName,
  });

  final String route;
  final dynamic iconData;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(SidebarController());

    return InkWell(
      onTap: () => menuController.onTap(route),
      onHover: (hovering) => hovering
          ? menuController.changeHoverItem(route)
          : menuController.changeHoverItem(''),
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSize.xs),
          child: Container(
            decoration: BoxDecoration(
              color:
                  menuController.isHover(route) ||
                      menuController.isActive(route)
                  ? AppColors.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(AppSize.cardRadiusSm),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // icon
                Padding(
                  padding: EdgeInsets.only(
                    left: AppSize.lg,
                    top: AppSize.sm,
                    bottom: AppSize.sm,
                    right: AppSize.sm,
                  ),
                  child: menuController.isActive(route)
                      ? HugeIcon(
                          icon: iconData,
                          color: AppColors.whiteColor,
                          size: 20,
                        )
                      : HugeIcon(
                          icon: iconData,
                          color: menuController.isHover(route)
                              ? AppColors.whiteColor
                              : AppColors.darkerGrey,
                          size: 22,
                        ),
                ),

                // Text
                if (menuController.isHover(route) ||
                    menuController.isActive(route))
                  Flexible(
                    child: Text(
                      itemName,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.apply(color: AppColors.whiteColor),
                    ),
                  )
                else
                  Flexible(
                    child: Text(
                      itemName,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.apply(color: AppColors.darkerGrey),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
