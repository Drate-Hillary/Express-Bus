import 'package:express_administrator/features/authentication/screens/login.dart';
import 'package:express_administrator/routes/middleware.dart';
import 'package:express_administrator/routes/routes.dart';
import 'package:get/get.dart';

class AppRoute {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
    ),
  ];
}
