import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/all_comment.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/small_profile_picture.dart';

class CommentsSection extends StatelessWidget {

  List<ListTileData> comments = [
    ListTileData(
      imageUrl: 'assets/images/player2.png',
      title: '@user1',
      subtitle: 'This is a great comment!',

      trailingIcon: Icons.favorite_border,

    ),
    ListTileData(
      imageUrl: 'assets/images/player2.png',
      title: '@user2',
      subtitle: 'Nice comment here',
      trailingIcon: Icons.favorite_border,
    ),
    ListTileData(
      imageUrl: 'assets/images/player2.png',
      title: '@user3',
      subtitle: 'Another interesting comment',
      trailingIcon: Icons.favorite_border,
    ),
    ListTileData(
      imageUrl: 'assets/images/player2.png',
      title: '@user1',
      subtitle: 'This is a great comment!',

      trailingIcon: Icons.favorite_border,

    ),
    ListTileData(
      imageUrl: 'assets/images/player2.png',
      title: '@user2',
      subtitle: 'Nice comment here',
      trailingIcon: Icons.favorite_border,
    ),
    ListTileData(
      imageUrl: 'assets/images/player2.png',
      title: '@user3',
      subtitle: 'Another interesting comment',
      trailingIcon: Icons.favorite_border,
    ),


    // Add more comments as needed
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.bottomSheet(
          Container(
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(12)
            ),
            height: 500,
            width: double.infinity,

            child: Column(
              children: [
                const Text('Comment',style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.34,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AllCommentsWidget(items:comments,)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children:[
                      Padding(
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text("Add Comments",style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,

                            ),),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.26,
                            ),
                            TextButton(onPressed: (){

                            }, child: const Text("Post"))
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
                


              ],
            ),
            padding: const EdgeInsets.all(20.0),
          ),
        );
      },
      child: const Text(
        "Add comments",
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
      ),
    );
  }
}
