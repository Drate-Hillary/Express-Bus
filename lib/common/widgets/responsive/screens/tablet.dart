import 'package:express_administrator/common/widgets/layout/header/header.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      drawer: const Drawer(
        backgroundColor: Colors.amber, 
      ),
      appBar: Header(),
      body: body ?? const SizedBox.shrink(), 
    );
  }
}