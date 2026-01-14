import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/story_card.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> posts = [
    "Hello world!",
    "Flutter is awesome!",
    "Check out this Facebook clone!",
    "Another day, another post!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          children: [
            Icon(Icons.facebook, color: Colors.blue, size: 40),
            SizedBox(width: 8),
            Text('Facebook',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.black)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.chat, color: Colors.black)),
        ],
      ),
      body: ListView(
        children: [
          // Stories Section (only circles)
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return StoryCard(); // only circle, no text
              },
            ),
          ),
          Divider(height: 1, color: Colors.grey),
          // Feed
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ProfileScreen(username: "User $index")),
                  );
                },
                child: PostCard(text: posts[index]),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
