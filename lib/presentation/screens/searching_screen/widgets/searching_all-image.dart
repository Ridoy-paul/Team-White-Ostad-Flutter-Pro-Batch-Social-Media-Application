import 'package:flutter/material.dart';

class SearchingAllmage extends StatelessWidget {
  const SearchingAllmage({
    super.key,
    required this.imageUrls,
  });

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjust the number of columns as needed
          crossAxisSpacing: 10.0, // Adjust spacing between columns
          mainAxisSpacing: 10.0, // Adjust spacing between rows
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrls[index],
              fit: BoxFit.cover, // Adjust image fitting as desired
            ),
          );
        },
      ),
    );
  }
}