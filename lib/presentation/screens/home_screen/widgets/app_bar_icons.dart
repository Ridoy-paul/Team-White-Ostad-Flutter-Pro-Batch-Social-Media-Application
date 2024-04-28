import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 35, // Adjust width as needed
            height: 35, // Adjust height as needed
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.cyanAccent, // Background color
            ),
            child: Stack(
              children: [
                // Position the image at the center
                Center(
                  child: Image.asset(
                    "assets/png_icons/notification.png",
                    width: 25, // Adjust image size as needed
                    height: 25, // Adjust image size as needed
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 35, // Adjust width as needed
            height: 35, // Adjust height as needed
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.cyanAccent, // Adjust color as needed
            ),
            child: Image.asset("assets/png_icons/mesage.png"),
            // Any child widgets can go here, such as icons, text, etc.
          ),
        ),
      ],
    );
  }
}