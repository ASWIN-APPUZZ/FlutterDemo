import 'package:demoapplication/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
     final ThemeData theme = Theme.of(context);
    return Scaffold(
      body:  Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                Strings.schedule,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
    );
  }
}