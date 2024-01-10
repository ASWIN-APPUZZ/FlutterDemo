import 'package:demoapplication/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
                Strings.msg,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
    );
  }
}