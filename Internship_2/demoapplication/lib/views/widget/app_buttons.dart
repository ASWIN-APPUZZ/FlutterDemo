import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final String text;
  Color? txtColor;
  Color? bgColor;
  IconData? icons;
  
  
  AppButtons({super.key, 
  required this.text, 
  this.txtColor, 
  this.bgColor, 
  this.icons,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        
        child: Text(text,),
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15.0)
      ),
    );
  }
}
