import 'package:express_administrator/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutesMiddleware extends GetMiddleware {
  
  @override
  RouteSettings? redirect(String? route) {
    final isAuth = true;

    return isAuth ? null :  RouteSettings(name: AppRoutes.login);
  }
}