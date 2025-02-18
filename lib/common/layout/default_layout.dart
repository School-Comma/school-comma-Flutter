import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget body;
  final Color backgroundColor;

  const DefaultLayout({
    super.key,
    required this.body,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      backgroundColor: backgroundColor,
    );
  }
}
