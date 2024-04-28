

import 'package:flutter/material.dart';

class AfterFillUpLocationMusicCaption extends StatelessWidget {
  const AfterFillUpLocationMusicCaption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.navigate_before_sharp,size: 40,color: Colors.black,),
        title: const Text("New Post",style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700
        ),),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Post",style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18
                ),),
                Icon(Icons.navigate_next,color: Colors.blue,size: 35,)
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,// Adjust alignment here
            children: [
              Expanded(
                flex: 150,
                child: Container(
                  child: Image.asset(
                    "assets/images/NatureImaage.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Expanded(
                flex: 400,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Nature is the world's leading multidisciplinary science journal.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
            height: 40,
          ),
          const ListTile(
            title: Text("Jamuna Future Park",style: TextStyle(
              fontSize: 18,
              color: Colors.black
            ),),
            subtitle: Text("0.4mi ka-244, Progoti Sarani, kuril,Baridhara",style: TextStyle(
                fontSize: 18,
                color: Colors.grey
            ),),
            trailing: Icon(Icons.close_outlined,),
            leading: Icon(Icons.location_on_outlined,color: Colors.blue,)
          ),
          Divider(
            color: Colors.grey[300],
            height: 40,
          ),
          const ListTile(
            title: Text("Rema,Selena Gomez-Calm Down",style: TextStyle(
                fontSize: 18,
                color: Colors.black
            ),),
            subtitle: Text("20 seceond",style: TextStyle(
                fontSize: 18,
                color: Colors.grey
            ),),
            trailing: Icon(Icons.close_outlined,),
            //leading: Image.asset(""),
            leading: Icon(Icons.play_circle_outline_rounded,color: Colors.blue,),
          ),
          Divider(
            color: Colors.grey[300],
            height: 40,
          ),

        ],
      ),
    );
  }
}
