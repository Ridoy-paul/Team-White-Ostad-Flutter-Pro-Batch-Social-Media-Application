import 'package:flutter/material.dart';

class SmallProfilePicture extends StatelessWidget {
  const SmallProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45, // Adjust width as needed
      height: 45, // Adjust height as needed
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey, // Adjust color as needed
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40), // Half of the width or height to make it a circle
        child: Image.asset(
          'assets/images/player2.png', // Provide the path to your image asset
          width: 45,
          height: 45,
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
    );
  }
}