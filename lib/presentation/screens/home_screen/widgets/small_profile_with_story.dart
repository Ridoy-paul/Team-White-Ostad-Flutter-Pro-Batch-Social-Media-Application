import 'package:flutter/material.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/small_profile_picture.dart';

class SmallProfileWithStory extends StatelessWidget {
  const SmallProfileWithStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.blue, // Choose your desired border color here
            width: 2.0, // Adjust the width of the border as needed
          ),
        ),
        child: SmallProfilePicture(), // Assuming SmallProfilePicture is a valid widget
      ),
    );
  }
}