import 'package:flutter/material.dart';

class ButtonPrague extends StatelessWidget {
  const ButtonPrague({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.location_on_outlined),
        label: Text("Prague"));
  }
}