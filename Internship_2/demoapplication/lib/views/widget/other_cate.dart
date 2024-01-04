import 'package:flutter/material.dart';

class OtherCate extends StatelessWidget {
  final Image img;
  final String text;

  OtherCate({
    super.key, 
    required this.img, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: SizedBox(
            child: img,
          ),
        ),
        Text(text)
      ],
    );
  }
}
