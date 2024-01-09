import 'package:flutter/material.dart';

import '../../src/core/colors/colors.dart';

class SubHeading extends StatelessWidget {
  final String text;
  SubHeading({
    super.key, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: AppColors.text, fontWeight: FontWeight.bold),
      textAlign: TextAlign.start,
    );
  }
}