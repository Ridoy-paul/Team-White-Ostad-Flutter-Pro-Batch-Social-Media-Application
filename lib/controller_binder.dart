///todo: isCodingWorkCompleted?=>"no, work in progress!";
library;


import 'package:get/get.dart';

import 'presentation/screens/screens_exporter.dart';
import 'presentation/screens/searching_screen/searching_screen.dart';
import 'presentation/screens/searching_screen/widgets/search_text_field.dart';

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
    //Get.put(HomeScreenController());
    Get.put(MessagingController());
    Get.put(NewPostController());
    Get.put(NotificationController());
    Get.put(OthersProfileController());
    Get.put(ProfileController());

    Get.put(SearchController());

  }
}

