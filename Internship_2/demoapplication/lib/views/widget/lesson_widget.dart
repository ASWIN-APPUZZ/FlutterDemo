import 'package:flutter/material.dart';

import '../class/lessonClass.dart';

class LessonWidget extends StatelessWidget {
  LessonWidget({super.key});

  List<LessonClass> lessons = [
    LessonClass(
      status: '2/7 Spot',
      heading: 'Best UI/UX Practices',
      price: '800',
      author: 'by Mariyam Fusek',
      img: 'assets/bus.png',
    ),
    LessonClass(
      status: '6/7 Spot',
      heading: 'Illustrator Basics',
      price: '450',
      author: 'by Jakson Nikon',
      img: 'assets/bus.png',
    ),
    LessonClass(
      status: '4/4 Spot',
      heading: 'Water Color Basics',
      price: '600',
      author: 'by Mary Kitter',
      img: 'assets/bus.png',
    ),
    LessonClass(
      status: '2/6 Spot',
      heading: 'Character Illustration',
      price: '750',
      author: 'by Maja Everydaydraw',
      img: 'assets/bus.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return Container(
              // height: 200,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                  Text(lessons[index].status,),
                  SizedBox(
                    height: 87,
                    // height: MediaQuery.of(context).size.width / 4.5,
                    child: Card(
                      child: Image.asset(lessons[index].img),
                      //   child: Image.asset(
                      // 'assets/bus.png',
                      // fit: BoxFit.fill,
                      // )
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 8,
                        child: Text(
                          lessons[index].heading,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Text(lessons[index].price,
                              style: const TextStyle(fontSize: 10.0)))
                    ],
                  ),
                  Text(lessons[index].author),
                ]),
              ));
        });
  }
}
