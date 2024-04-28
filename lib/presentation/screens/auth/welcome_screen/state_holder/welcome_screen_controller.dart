//change the state_holder file name as per work requirement..
//change the widget name as per work requirement..

import 'package:get/get.dart';

class WelcomeScreenController extends GetxController{
bool _welcomeScreenInProgress=false;

bool  get welcomeScreenInProgress=>_welcomeScreenInProgress;

Future<void> getWelcomeScreen() async {
  _welcomeScreenInProgress=true;
  update();
  await Future.delayed(const Duration(seconds: 5),);
  _welcomeScreenInProgress=false;
  update();
}
}