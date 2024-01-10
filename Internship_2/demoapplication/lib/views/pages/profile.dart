import 'package:demoapplication/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                Strings.profile,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
    );
  }
}