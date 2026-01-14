import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String text;

  const PostCard({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(text, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
