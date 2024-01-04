
import 'package:flutter/material.dart';

class LessonWidget extends StatelessWidget {
  const LessonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "2/7 SPOTS LEFT",
          style: TextStyle(fontSize: 10.0),
        ),
        Card(
          child: SizedBox(
            child: Column(children: [
              Image.asset('assets/bus.png'),
            ]),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Text(
                "Best UI/UX practices",
                style:
                    TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                flex: 3,
                child: Text("800 KO",
                    style: TextStyle(fontSize: 10.0)))
          ],
        ),
        Text("By Marian Fusek",
            style: TextStyle(fontSize: 10.0))
      ],
    );
  }
}