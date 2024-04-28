import 'package:flutter/material.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/comment_section.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/widgets/small_profile_picture.dart';

class NewsFeedPost extends StatelessWidget {
  const NewsFeedPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.65,
        width: double.infinity,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
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
                    const SizedBox(
                      width: 7,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Iqramul Hasan",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        Text("@usnm5623",
                          style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),

                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 35, // Adjust width as needed
                    height: 35, // Adjust height as needed
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:Colors.black12, // Adjust color as needed
                    ),
                    child: Image.asset("assets/png_icons/notification.png"),
                    // Any child widgets can go here, such as icons, text, etc.
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0), // Adjust as desired
                child: Container(
                  height: 400,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/NatureImaage.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/png_icons/LoveFill.png",color: Colors.pink,),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/png_icons/comment.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("20 comments",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/png_icons/bookmark.png"),
                ),

              ],
            ),
            Row(
              children: [
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
                CommentsSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
