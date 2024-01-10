import 'package:flutter/material.dart';
import '../../src/core/colors/colors.dart';

class Heading extends StatelessWidget {
  final String text;
  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: AppColors.blacks, fontSize: 24),
        textAlign: TextAlign.left);
  }
}
