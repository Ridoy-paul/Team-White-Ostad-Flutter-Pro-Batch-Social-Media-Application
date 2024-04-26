///todo: isCodingWorkCompleted?=>"no, work in progress!";
library;

import 'package:get/get.dart';

import 'presentation/screens/home_screen/state_holder/home_screen_controller.dart';
import 'presentation/screens/screens_exporter.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(WelcomeScreenController());
    Get.put(EmailOrPhoneLoginController());
    Get.put(SendOtpToEmailOrPhoneController());
    Get.put(OtpVerificationController());
    Get.put(ContentUploadController());
    Get.put(FollowersController());
    Get.put(FollowingController());
    Get.put(HomeScreenController());
    Get.put(MessagingController());
    Get.put(NewPostController());
    Get.put(NotificationController());
    Get.put(OthersProfileController());
    Get.put(ProfileController());
    Get.put(SearchingController());
  }
}
