import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../screens_exporter.dart';

class HiddenOptions extends StatelessWidget {
  const HiddenOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            const SizedBox(height: 20,),
                            InkWell(
                              onTap: (){
                                Get.to(()=>const SendOtpToEmailOrPhoneScreen());
                              },
                              child: Text("Forgot Password",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).primaryColor),),
                            ),
                            const SizedBox(height: 4,),
                            InkWell(
                              onTap: (){
                                Get.to(()=>const HomeScreen());
                              },
                              child: Text("Home",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).primaryColor),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(""),
                                TextButton(onPressed: (){Get.back();}, child: const Text("close",style: TextStyle(color:Colors.red),))
                              ],),

                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
        icon: Icon(
          Icons.expand_more,
          color: Theme.of(context).colorScheme.primary,
        ));
  }
}