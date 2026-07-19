import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Login", style: Theme.of(context).textTheme.headlineMedium,),
    );
  }
}