import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/common_widgets/center_circular_progress_indicator.dart';
import 'package:team_white_social_media_app/presentation/screens/auth/welcome_screen/state_holder/welcome_screen_controller.dart';
import '../../screens_exporter.dart';
import 'widgets/hidden_options.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            _appLogo(context),
            const SizedBox(
              height: 32,
            ),
            _createAccountButton(),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_loginButton(context), const HiddenOptions()],
            ),
          ]),
        ),
      ),
    );
  }

  Text _appLogo(BuildContext context) {
    return Text(
      "Social Live",
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          fontFamily: "Lobster"),
    );
  }

  SizedBox _createAccountButton() {
    return SizedBox(
      width: double.infinity,
      child: GetBuilder<WelcomeScreenController>(
        builder: (controller) {
          return Visibility(
            visible: controller.welcomeScreenInProgress==false,
            replacement: const CenterCircularProgressIndicator(),
            child: ElevatedButton(
              onPressed: () {
                controller.getWelcomeScreen();
                Get.to(() => const CreateProfileScreen());
              },
              child: const Text("Create Account"),
            ),
          );
        }
      ),
    );
  }

  GetBuilder<WelcomeScreenController> _loginButton(BuildContext context) {
    return GetBuilder<WelcomeScreenController>(
      builder: (controller) {
        return Visibility(
          visible: controller.welcomeScreenInProgress==false,
          replacement: const CenterCircularProgressIndicator(),
          child: TextButton(
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
        );
      }
    );
  }
}
