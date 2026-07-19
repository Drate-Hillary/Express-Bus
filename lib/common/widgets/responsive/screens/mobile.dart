import 'package:express_administrator/common/widgets/layout/header/header.dart';
import 'package:express_administrator/common/widgets/layout/sidebars/sidebar.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  Mobile({super.key, this.body});

  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryBackground,
      drawer: Sidebar(),
      appBar: Header(scaffoldKey: scaffoldKey,),
      body: body ?? const SizedBox(),
    );
  }
}
