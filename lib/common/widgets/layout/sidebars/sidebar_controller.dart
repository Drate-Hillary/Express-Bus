import 'package:express_administrator/routes/routes.dart';
import 'package:express_administrator/utils/device/device_utility.dart';
import 'package:get/get.dart';

class SidebarController extends GetxController {

  final activeItem = AppRoutes.responsiveDesign.obs;
  final hoverItem = "".obs;

  void changeActiveItem(String route)=> activeItem.value = route;

  void changeHoverItem(String route) {
    if (!isActive(route)) hoverItem.value = route;
  }

  bool isActive(String route) => activeItem.value == route;
  bool isHover(String route) => hoverItem.value == route;

  void onTap(String route){
    if (isActive(route)) {
      changeActiveItem(route);

      if(DeviceUtility.isMobileScreen(Get.context!)) Get.back();

      Get.toNamed(route);
    }
  }


}