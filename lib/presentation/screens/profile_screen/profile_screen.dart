

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:team_white_social_media_app/presentation/screens/profile_screen/widgets/grid_view.dart';
import 'package:team_white_social_media_app/presentation/screens/profile_screen/widgets/tab_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("My Profile",style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 130,
              color: Colors.white,
              child:Row(
                children: [
                   Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/player3.png"),
                          radius: 45,

                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Iqramul hasan",style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),

                        const Text("@iqhs6543",style: TextStyle(
                            fontSize: 17,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text("59 ",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),

                            const Text("Post  ",style: TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),

                            Container(
                              width: 7, // Adjust width as needed
                              height: 7, // Adjust height as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey, // Adjust color as needed
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text("125 ",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                            const Text("Following  ",style: TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                            Container(
                              width: 7, // Adjust width as needed
                              height: 7, // Adjust height as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey, // Adjust color as needed
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text("850 ",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                            const Text("Follower  ",style: TextStyle(
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),


                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ) ,

            ),
            Container(
              //height: 900,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/png_icons/Grid.png"),
                          Text("Grid View",style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),),
                        ],
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/png_icons/List.png"),
                          Text("List View",style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),),
                        ],
                      )
                    ],
                  ),


                ],
              ),
            ),
            // Container(
            //   color: Colors.white,
            //   child:  MasonryGridView.builder(
            //       scrollDirection: Axis.vertical,
            //       itemCount: 10,
            //
            //       gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //       ),
            //       itemBuilder: (context,index){
            //         return ClipRRect(
            //           borderRadius: BorderRadius.circular(10),
            //           child: Image.network("https://source.unsplash.com/random?sig=$index"),
            //         );
            //       }
            //
            //   ),
            // )


          ],
        ),
      ),
    );
  }
}
