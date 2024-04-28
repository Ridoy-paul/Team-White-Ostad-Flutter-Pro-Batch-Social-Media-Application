import 'package:flutter/material.dart';

class AllCommentsWidget extends StatelessWidget {
  final List<ListTileData> items;

  AllCommentsWidget({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),


      //scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CommentTile(
          data: items[index],
          onTap: () {
            // Handle tap on the ListTile (e.g., navigate to item details)
            print('Item tapped: ${items[index].title}');
          },
        );
      },
    );
  }
}

class CommentTile extends StatelessWidget {
  final ListTileData data;
  final VoidCallback onTap;

  CommentTile({required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(data.imageUrl), // Leading image
        ),
        title: Row(
          children: [

            Text(
              data.title,
              style: const TextStyle(
                color: Colors.black, // Set text color for the title
                fontSize: 17, // Example: Adjust font size
                fontWeight: FontWeight.w600, // Example: Adjust font weight
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "2 hour ago",
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,// Set text color for the title
                fontSize: 15, // Example: Adjust font size
                // Example: Adjust font weight
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.subtitle, // Comment subtitle
              style: const TextStyle(
                color: Colors.black45, // Set text color for the subtitle
                fontSize: 18, // Example: Adjust font size
              ),
            ),
            const SizedBox(height: 8), // Vertical spacing
            Text(
              'Replay', // Example: Body text
              style: TextStyle(
                color: Colors.grey[800], // Set text color for the body
                fontSize: 16, // Example: Adjust font size
              ),
            ),
          ],
        ),
        trailing: Icon(
          data.trailingIcon,
          color: Colors.black, // Set icon color
        ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Adjust padding for content
        isThreeLine: true, // Set to true if subtitle might contain multiple lines
        dense: true, // Reduces the height of the ListTile
      ),
    );
  }
}

class ListTileData {
  final String imageUrl;
  final String title;
  final String subtitle;
  final IconData trailingIcon;

  ListTileData({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
  });
}
