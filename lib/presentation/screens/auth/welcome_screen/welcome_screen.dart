import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/auth/create_profile_screen/create_profile_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/auth/send_otp_to_email_or_phone_screen/send_otp_to_email_or_phone_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/auth/send_otp_to_email_or_phone_screen/state_holder/send_otp_to_email_or_phone_controller.dart';
import 'package:team_white_social_media_app/presentation/screens/home_screen/home_screen.dart';

import '../email_or_phone_login_screen/email_or_phone_login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> loginOption = ["Forgot Password", "Skip"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Social Live",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontFamily: "Lobster"),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(()=>const CreateProfileScreen());
                },
                child: const Text("Create Account"),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => const EmailOrPhoneLoginScreen());
                  },
                  child: Text(
                    "Log In",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                hiddenOptions(context)
              ],
            ),
          ]),
        ),
      ),
    );
  }

  IconButton hiddenOptions(BuildContext context) {
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
