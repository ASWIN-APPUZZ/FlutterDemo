import 'package:demoapplication/src/core/colors/colors.dart';
import 'package:flutter/material.dart';
import '../class/buttonClass.dart';

class AppButtons extends StatelessWidget {
  
  AppButtons({super.key,});
  List<ButtonClass> appbutton = [
    ButtonClass(text: 'Design'),
    ButtonClass(text: 'Art & Craft'),
    ButtonClass(text: 'Prague'),
    ButtonClass(text: 'Monday'),
    ButtonClass(text: '2+ Spot'),
    ButtonClass(text: '300-850'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/9.5,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3.1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ),
        itemCount: appbutton.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(border: Border.all(color: AppColors.whites), borderRadius: const BorderRadius.all(Radius.circular(20)),),
            child: ElevatedButton(
                onPressed: () {}, child: Text(appbutton[index].text)),
          );
        }));
  }
}