import 'package:demoapplication/src/core/constants/strings.dart';
import 'package:demoapplication/views/widget/app_buttons.dart';
import 'package:flutter/material.dart';
import '../../src/core/colors/colors.dart';
import '../widget/heading_widget.dart';
import '../widget/lesson_widget.dart';
import '../widget/other_cate.dart';
import '../widget/subhead_widget.dart';

class Lessons extends StatefulWidget {
  const Lessons({super.key});
  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // MARK:- Body
        body: SafeArea(
            child: Card(
                shadowColor: const Color.fromARGB(0, 0, 0, 0),
                margin: const EdgeInsets.all(8.0),
                child: SizedBox(
                    child: SingleChildScrollView(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(padding: EdgeInsets.all(8.0)),
                              //MARK:- Headings
                              Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.menu),
                                        alignment: Alignment.topRight),
                                    Heading(text: Strings.forYou),
                                    SizedBox(height: 10.0),
                                  ]),
                              //MARK:- Sub
                              SubHeading(text: Strings.filter),
                              //MARK:- Buttons
                              AppButtons(),
                              //MARK:- Lessons
                              LessonWidget(),
                              SizedBox(height: 20),
                              //MARK:- Button
                              TextButton(
                                  onPressed: () {},
                                  child: Text(Strings.seeAll),
                                  style: TextButton.styleFrom(
                                      backgroundColor: AppColors.blues,
                                      elevation: 5,
                                      foregroundColor: AppColors.whites)),
                              const SizedBox(height: 20),
                              //MARK:- Other Categories
                              SubHeading(text: Strings.other),
                              //MARK:- Category cards
                              Container(child: OtherCate()),
                              SizedBox(height: 20),
                            ]))))));
  }
}
