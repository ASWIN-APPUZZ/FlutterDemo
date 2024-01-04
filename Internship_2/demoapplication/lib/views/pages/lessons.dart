import 'package:demoapplication/views/widget/button_Art&Craft.dart';
import 'package:demoapplication/views/widget/button_design.dart';
import 'package:flutter/material.dart';
import '../../src/core/colors/colors.dart';
import '../widget/button_monday.dart';
import '../widget/button_spot.dart';
import '../widget/button_suggession.dart';
import '../widget/buttonprague.dart';
import '../widget/lesson_widget.dart';
import '../widget/other_cate.dart';

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
                        Text('Lessons for you', style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.blacks, fontSize: 24), textAlign: TextAlign.left,),
                        SizedBox(height: 10.0,),
                      ]),
                  Text("FILTERED BY", textAlign: TextAlign.left, style: TextStyle(color: AppColors.text, fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      ButtonDesign(),
                      SizedBox(width: 5.0,),
                      ButtonArt(),
                      SizedBox(width: 5.0),
                      ButtonPrague()
                    ],
                  ),
                  Row(
                    children: [
                      ButtonMonday(),
                      SizedBox(width: 5.0),
                      ButtonSpot(),
                      SizedBox(width: 5.0),
                      ButtonSuggession()
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: LessonWidget(),
                      ),
                      Expanded(
                        flex: 3,
                        child: LessonWidget()
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
                        child: LessonWidget()
                      ),
                      Expanded(
                        flex: 3,
                        child: LessonWidget()
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: Text("See All Lessons")),
                  SizedBox(
                    height: 20,
                  ),
                  //other cate.
                  Text("OTHER CATEROGIES", style: TextStyle( color: AppColors.text, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: OtherCate(),
                      ),
                      Expanded(
                        flex: 2,
                        child: OtherCate()
                      ),
                      Expanded(
                        flex: 2,
                        child: OtherCate()
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: OtherCate()
                      ),
                      Expanded(
                        flex: 2,
                        child: OtherCate()
                      ),
                      Expanded(
                        flex: 2,
                        child: OtherCate()
                      ),
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