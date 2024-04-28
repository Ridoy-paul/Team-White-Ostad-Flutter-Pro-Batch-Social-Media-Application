import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/presentation_utilities/form_validator.dart';
import 'package:team_white_social_media_app/presentation/screens/auth/create_profile_screen/create_profile_screen.dart';
import 'package:team_white_social_media_app/presentation/screens/auth/otp_verification_screen/otp_verification_screen.dart';

class SendOtpToEmailOrPhoneScreen extends StatefulWidget {
  const SendOtpToEmailOrPhoneScreen({super.key});

  @override
  State<SendOtpToEmailOrPhoneScreen> createState() =>
      _SendOtpToEmailOrPhoneScreenState();
}

class _SendOtpToEmailOrPhoneScreenState
    extends State<SendOtpToEmailOrPhoneScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isButtonActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _authAppBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            onChanged: () {
              setState(() {
                _isButtonActive = _formKey.currentState!.validate();
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 160,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: "Inter"),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Please enter your email address',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  controller: _emailTEController,
                  decoration: const InputDecoration(hintText: 'Input Email'),
                  validator: (value) => FormValidator.emailValidator(value),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: _isButtonActive
                          ? () {
                              Get.to(() => const OtpVerificationScreen());
                            }
                          : null,
                      child: const Text("Get OTP")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar get _authAppBar {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Get.back();
          Get.offAll(()=>CreateProfileScreen());
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
