import 'package:express_administrator/common/widgets/layout/header/header.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      drawer: Drawer(),
      appBar: Header(),
      body: body ?? const SizedBox(),
    );
  }
}
