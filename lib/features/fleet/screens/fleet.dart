import 'package:flutter/material.dart';

class Fleet extends StatelessWidget {
  const Fleet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (
        Text("Fleet screen", style: Theme.of(context).textTheme.headlineSmall,)
      ),
    );
  }
}