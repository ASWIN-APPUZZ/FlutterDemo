import 'package:demoapplication/views/class/otherCateClass.dart';
import 'package:flutter/material.dart';

class OtherCate extends StatelessWidget {
  OtherCate({super.key,});
  List<OtherClass> category = [
    OtherClass(
      category: 'Business',
      img: 'assets/bus.png',
    ),
    OtherClass(
      category: 'Cooking',
      img: 'assets/bus.png',
    ),
    OtherClass(
      category: 'Languages',
      img: 'assets/bus.png',
    ),
    OtherClass(
      category: 'Coding',
      img: 'assets/bus.png',
    ),
    OtherClass(
      category: 'Support',
      img: 'assets/bus.png',
    ),
    OtherClass(
      category: 'Self-Development',
      img: 'assets/bus.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        shrinkWrap: true,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Container(
              height: 100,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                        height: 86,
                        child: Image.asset(category[index].img)),
                    Text(category[index].category, textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),
                  ]));
        });
  }
}