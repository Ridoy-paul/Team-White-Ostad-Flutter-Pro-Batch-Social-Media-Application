import 'package:flutter/material.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/home_screen.dart';

class StoryItem extends StatelessWidget {
  final Story story;

  const StoryItem({required this.story});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Card(
            elevation: 1,
            child: Image.asset(
              story.imageUrl, // Replace with your image loading logic
              height: 140.0,
              width: 120.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            story.userName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        ],
      ),
    );
  }
}