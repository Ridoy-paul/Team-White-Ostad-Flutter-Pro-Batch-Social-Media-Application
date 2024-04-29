import 'package:flutter/material.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/app_bar_icons.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/news_feed_post.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/small_profile_picture.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/small_profile_with_story.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/story_section.dart';


// Define the Story class if not already defined
class Story {
  final String imageUrl;
  final String userName;

  Story({required this.imageUrl, required this.userName});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Sample story data (replace with your actual data source)
  final List<Story> stories = [
    Story(imageUrl: 'assets/images/player3.png', userName: 'Alice'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Bob'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Charlie'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Alice'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Bob'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Charlie'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Alice'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Bob'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Charlie'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Alice'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Bob'),
    Story(imageUrl: 'assets/images/player3.png', userName: 'Charlie'),
    // Add more stories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Social Live",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: "Lobster",
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SmallProfilePicture(),
        ),
        actions: const [
          AppBarIcons(),
        ],
      ),
      body: Column(
        children: [
          // Horizontal story section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200.0, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      StoryItem(story: stories[index]),
                      const SmallProfileWithStory(),
                    ],
                  );
                },
              ),
            ),
          ),
          // Divider (optional)


          // Expanded vertical post list
          Expanded(
            child: ListView.builder(
              itemCount: 2, // Display two posts for example
              itemBuilder: (context, index) {
                return const NewsFeedPost(); // Use different data for each post
              },
            ),
          ),
        ],
      ),
    );
  }
}


