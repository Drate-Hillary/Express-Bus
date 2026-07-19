import 'package:express_administrator/common/widgets/layout/header/header.dart';
import 'package:express_administrator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Row(
        children: [
          // Left Side: Sidebar
          Expanded(
            flex: 1,
            child: Drawer(
              width: double.infinity,
              backgroundColor: Colors.amber.shade200,
            ),
          ),
          
          Expanded(
            flex: 4,
            child: Column(
              children: [
                // Header
                Header(),

                Expanded(
                  child: body ?? const SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
