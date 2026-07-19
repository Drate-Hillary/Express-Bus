import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (
        Text("Overview screen", style: Theme.of(context).textTheme.headlineSmall,)
      ),
    );
  }
}