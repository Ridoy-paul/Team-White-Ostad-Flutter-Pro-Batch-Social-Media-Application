import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/home_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/new_post_screen/upload_content_add_location_music_caption_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/new_post_screen/widgets/image_selection_grid.dart';

class ImageSelectionScreen extends StatelessWidget {
  const ImageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageController = Get.put(ImageSelectionController());

    List<String> imagePaths = [
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      'assets/images/NatureImaage.jpg',
      // ... more image paths
    ];

    imagePaths.forEach((path) => imageController.addImage(path));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: (){
        //  Get.offAll(HomeScreen());
          },
            child: const Icon(Icons.navigate_before_sharp,size: 40,color: Colors.black,)),
        title: const Text("New Post",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Get.to(const AddLocationMusicCaption());
              },
              child: const Row(
                children: [
                  Text("Next",style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18
                  ),),
                  Icon(Icons.navigate_next,color: Colors.blue,size: 35,)
                ],
              ),
            ),
          ),
        ],
      ),
      body:  Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
              width: double.infinity,

              child: Image.network("https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80",fit: BoxFit.fill,)),
          Container(
            height: MediaQuery.of(context).size.height*0.07,
            width: double.infinity,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Text("Recent photos",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                      ),),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/png_icons/Down Arrow.png")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset("assets/png_icons/clip.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("Multiple Select",style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                      ),),


                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ImageSelectionGrid(onSelectionChanged: (int index, bool isSelected) {
            
            },
            
            ),
          )

        ],
      ),
    );
  }
}
