import 'package:flutter/material.dart';
import 'profile_screen.dart';
import '../widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  final List<String> posts = [
    "Hello world!",
    "Flutter is awesome!",
    "Check out this Facebook clone!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Facebook Clone")),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => ProfileScreen(username: "User $index"),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    var begin = Offset(1.0, 0.0);
                    var end = Offset.zero;
                    var curve = Curves.easeInOut;
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    return SlideTransition(position: animation.drive(tween), child: child);
                  },
                ),
              );
            },
            child: PostCard(text: posts[index]),
          );
        },
      ),
    );
  }
}
