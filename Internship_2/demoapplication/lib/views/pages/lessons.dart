import 'package:demoapplication/views/widget/app_buttons.dart';
import 'package:flutter/material.dart';
import '../../src/core/colors/colors.dart';
import '../widget/heading.dart';
import '../widget/lesson_widget.dart';
import '../widget/other_cate.dart';
import '../widget/subhead.dart';

class Lessons extends StatefulWidget {
  const Lessons({super.key});
  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          shadowColor: AppColors.shadow,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(padding: EdgeInsets.all(8.0)),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu),
                          alignment: Alignment.topRight,
                        ),
                        Heading(text: 'Lessons for you',),
                        SizedBox(
                          height: 10.0,
                        ),
                      ]),
                  SubHeading(text: 'FILTERED BY'),
                  Row(
                    children: [
                      AppButtons(text: "Design"),
                      SizedBox(
                        width: 5.0,
                      ),
                      AppButtons(text: "Art&Craft"),
                      SizedBox(width: 5.0),
                      AppButtons(
                        text: "Prague",
                        icons: Icons.location_on_outlined,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AppButtons(text: "Monday"),
                      SizedBox(width: 5.0),
                      AppButtons(text: "2+ Spot"),
                      SizedBox(width: 5.0),
                      AppButtons(text: "300-980"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: LessonWidget(
                          author: 'by Marian Fusek',
                          heading: 'Best UI/UX Practices',
                          img: Image.asset('assets/bus.png'),
                          price: '800',
                          status: '2/7 spots left',
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: LessonWidget(
                          author: 'by Jackson Nikon',
                          heading: 'Illustrator Basics',
                          img: Image.asset('assets/bus.png'),
                          price: '450',
                          status: '3/7 spots left',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: LessonWidget(
                          author: 'by Mary Kitter',
                          heading: 'Watercolor Basics',
                          img: Image.asset('assets/bus.png'),
                          price: '600',
                          status: '4/4 spots left',
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: LessonWidget(
                          author: 'by Maja Everydaydraw',
                          heading: 'Character Illustration',
                          img: Image.asset('assets/bus.png'),
                          price: '750',
                          status: '2/6 spots left',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppButtons(text: 'See All Lessons'),
                  SizedBox(
                    height: 20,
                  ),
                  //other cate.
                  SubHeading(text: 'OTHER CATEROGIES',),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: OtherCate(
                          img: Image.network(
                              "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
                          text: 'Business',
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: OtherCate(
                            img: Image.network(
                                "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
                            text: 'Cooking',
                          )),
                      Expanded(
                          flex: 2,
                          child: OtherCate(
                            img: Image.network(
                                "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
                            text: 'Languages',
                          )),
                    ],
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Row(
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: OtherCate(
                            img: Image.network(
                                "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
                            text: 'Coding',
                          )),
                      Expanded(
                          flex: 2,
                          child: OtherCate(
                            img: Image.network(
                                "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
                            text: 'Sports',
                          )),
                      Expanded(
                          flex: 2,
                          child: OtherCate(
                            img: Image.network(
                                "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
                            text: 'Self - Development',
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}