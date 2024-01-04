import 'package:flutter/material.dart';

class OtherCate extends StatelessWidget {
  const OtherCate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: SizedBox(
            child: Image.network(
                "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
          ),
        ),
        Text("data")
      ],
    );
  }
}