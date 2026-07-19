import 'package:express_administrator/common/widgets/layout/header/header.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  Tablet({super.key, this.body});

  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryBackground,
      drawer: const Drawer(
        backgroundColor: Colors.amber, 
      ),
      appBar: Header(scaffoldKey: scaffoldKey,),
      body: body ?? const SizedBox.shrink(), 
    );
  }
}