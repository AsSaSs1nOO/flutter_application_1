import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Quiz"),
      actions: [
        IconButton(
          onPressed: () {
            print("Icon button cloud pressed");
          },
          icon: Icon(Icons.cloud),
        ),
        IconButton(
          onPressed: () {
            print("Icon button alarm pressed");
          },
          icon: Icon(Icons.alarm),
        ),
      ],
      // backgroundColor: Colors.purple,
    );
  }
}