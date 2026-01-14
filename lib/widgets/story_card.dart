import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

