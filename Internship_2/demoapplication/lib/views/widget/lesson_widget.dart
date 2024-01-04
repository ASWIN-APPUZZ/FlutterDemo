import 'package:flutter/material.dart';

class LessonWidget extends StatelessWidget {
  final String status;
  final String heading;
  final String price;
  final String author;
  final Image img;

  LessonWidget({
    super.key, 
    required this.status, 
    required this.heading, 
    required this.price, 
    required this.author, 
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(status,style: TextStyle(fontSize: 10.0),),
        Card(
          child: SizedBox(
            child: Column(children: [img,]),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Text(heading,style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                flex: 3,
                child: Text(price, style: TextStyle(fontSize: 10.0)))
          ],
        ),
        Text(author, style: TextStyle(fontSize: 10.0))
      ],
    );
  }
}
