
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/new_post_screen/add_location_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/new_post_screen/add_music_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/new_post_screen/after_fill_up_location_music_caption_screen.dart';

class AddLocationMusicCaption extends StatelessWidget {
  const AddLocationMusicCaption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            onTap: (){
              Get.back();
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
                Get.to(const AfterFillUpLocationMusicCaption());
              },
              child: const Row(
                children: [
                  Text("Post",style: TextStyle(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 150,
                  child: Container(
                    
                      
                      child: Image.asset("assets/images/NatureImaage.jpg",fit: BoxFit.contain,)),
                ),

                Expanded(
                  flex: 400,
                  child: TextFormField(
                  decoration: InputDecoration(


                    hintText: "Write a caption",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[300]
                    ),
                    border: InputBorder.none, // Removes all borders
                    focusedBorder: const OutlineInputBorder( // Customizes focused border (optional)
                      borderSide: BorderSide(color: Colors.transparent), // Makes focused border invisible
                    ),
                  ),
                    maxLines: 6,
                ),

                )
              ],
            ),
            Divider(
              color: Colors.grey[300],
              height: 40,
            ),
            const Text("Add Location",style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),),
            Divider(
              color: Colors.grey[300],
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(const AddLocation());
                    },
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Multiple Select",style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(const AddLocation());
                    },
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Multiple Select",style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(const AddLocation());
                    },
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Multiple Select",style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),


            Divider(
              color: Colors.grey[300],
              height: 40,
            ),

            const Text("Add Music",style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black
            ),),
            Divider(
              color: Colors.grey[300],
              height: 40,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 InkWell(
                   onTap: (){
                     Get.to(const AddMusic());
                   },
                   child: Container(

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.grey[300],
                     ),
                     child: Row(
                       children: [
                         Image.asset("assets/png_icons/equalizer.png"),
                         const Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Text("Multiple Select",style: TextStyle(
                               color: Colors.black,
                               fontSize: 18
                           ),),
                         ),
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(
                   width: 5,
                 ),
                 InkWell(
                   onTap: (){
                     Get.to(const AddMusic());
                   },
                   child: Container(

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.grey[300],
                     ),
                     child: Row(
                       children: [
                         Image.asset("assets/png_icons/equalizer.png"),
                         const Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Text("Multiple Select",style: TextStyle(
                               color: Colors.black,
                               fontSize: 18
                           ),),
                         ),
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(
                   width: 5,
                 ),
                 InkWell(
                   onTap: (){
                     Get.to(const AddMusic());
                   },
                   child: Container(

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.grey[300],
                     ),
                     child: Row(
                       children: [
                         Image.asset("assets/png_icons/equalizer.png"),
                         const Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Text("Multiple Select",style: TextStyle(
                               color: Colors.black,
                               fontSize: 18
                           ),),
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
            )
          ],
        ),
      ),
    );
  }
}
