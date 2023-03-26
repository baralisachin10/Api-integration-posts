import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String userid;
  final String id;
  final String title;
  final String posts;

  const Posts({
    super.key,
    required this.userid,
    required this.id,
    required this.title,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('UserId: $userid'),
          Text('id: $id'),
          Text('title: $title'),
          Text('body: $posts')
        ],
      ),
    );
  }
}
