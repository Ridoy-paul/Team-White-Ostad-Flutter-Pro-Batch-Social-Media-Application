import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/new_post_screen/image_selection-screen.dart';

class SelectFromGallery extends StatelessWidget {
  const SelectFromGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              // Import the required package (assuming you're using GetX)
              Get.to(ImageSelectionScreen()); // Replace 'NextScreen' with your actual screen class
            },
            icon: Icon(Icons.photo_camera_back_outlined, color: Colors.black, size: 60),
          ),

          Text(
            'Gallery',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
      onTap: (){

      },
    );
  }
}