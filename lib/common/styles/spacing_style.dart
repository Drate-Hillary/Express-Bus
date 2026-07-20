import 'package:flutter/material.dart';
import 'package:express_administrator/utils/constants/sizes.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSize.appBarHeight,
    left: AppSize.defaultSpace,
    bottom: AppSize.defaultSpace,
    right: AppSize.defaultSpace,
  );
}