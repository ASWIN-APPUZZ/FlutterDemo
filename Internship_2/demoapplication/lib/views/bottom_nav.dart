import 'package:demoapplication/src/core/constants/strings.dart';
import 'package:demoapplication/views/pages/lessons.dart';
import 'package:demoapplication/views/pages/messages.dart';
import 'package:demoapplication/views/pages/profile.dart';
import 'package:demoapplication/views/pages/schedule.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int currentState = 0;

  final _pages = [
    // LessonsGrid(),
    Lessons(),
   Schedule(), Messages(), Profile()];
  @override
  Widget build(BuildContext context) {
     final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: _pages[currentState],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentState,
        onTap: (newIndex) {
          setState(() {
            currentState = newIndex;
          });
        },
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.blue,
        // fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: Strings.lesson),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: Strings.schedule),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: Strings.msg),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: Strings.profile)
        ],
      ),
    );
  }
}
