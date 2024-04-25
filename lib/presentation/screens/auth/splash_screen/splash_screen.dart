import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/auth/welcome_screen/welcome_screen.dart';

import '../../../common_widgets/center_circular_progress_indicator.dart';
import '../../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    moveToNextScreen();
    }

  // void moveToNextScreen() async {
  //   await Future.delayed(const Duration(seconds: 1),);
  //   await Get.find<AuthController>().initialize();
  //   Get.offAll(const MainBottomNavScreen());
  // }

  void moveToNextScreen() async{
    await Future.delayed(const Duration(seconds: 1),);
    Get.offAll(()=>const WelcomeScreen());
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CenterCircularProgressIndicator(),
            Text("Social Live",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Lobster",fontSize: 35),),
          ],
        ),
      ),
    );
  }
}
