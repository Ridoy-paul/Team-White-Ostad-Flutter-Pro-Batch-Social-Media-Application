import 'package:flutter/material.dart';

class ImageWithRoundBorder extends StatelessWidget {
  final String imgPath;
  const ImageWithRoundBorder({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: ExactAssetImage(imgPath),
    );
  }
}
