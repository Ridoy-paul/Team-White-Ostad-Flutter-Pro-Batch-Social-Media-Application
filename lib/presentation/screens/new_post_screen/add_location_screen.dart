

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddLocation extends StatelessWidget {
  const AddLocation({super.key});

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
        title: Text("Add Location",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700
        ),),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                // Replace with the actual number of items in your data source
                itemCount: 20,
                itemBuilder: (context, index) {
                  // Replace with your data or logic to populate ListTile properties
                  return ListTile(
                      title: Text("Jamuna Future Park",style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                      ),),
                      subtitle: Text("0.4mi ka-244, Progoti Sarani, kuril,Baridhara",style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey
                      ),),

                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
