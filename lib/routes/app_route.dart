import 'package:express_administrator/features/authentication/screens/forgot_password/forgot_password.dart';
import 'package:express_administrator/features/authentication/screens/login/login.dart';
import 'package:express_administrator/features/authentication/screens/reset_password/reset_password.dart';
import 'package:express_administrator/routes/routes.dart';
import 'package:get/get.dart';

class AppRoute {
  static final List<GetPage> pages = [
    // Authentication
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: AppRoutes.resetPassword, page: () => ResetPassword()),
  ];
}
