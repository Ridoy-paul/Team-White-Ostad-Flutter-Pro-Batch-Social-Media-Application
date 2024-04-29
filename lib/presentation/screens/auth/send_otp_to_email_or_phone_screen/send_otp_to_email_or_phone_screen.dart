import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/auth/otp_verification_screen/otp_verification_screen.dart';

class SendOtpToEmailOrPhoneScreen extends StatefulWidget {
  const SendOtpToEmailOrPhoneScreen({super.key});

  @override
  State<SendOtpToEmailOrPhoneScreen> createState() => _SendOtpToEmailOrPhoneScreenState();
}

class _SendOtpToEmailOrPhoneScreenState extends State<SendOtpToEmailOrPhoneScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 160,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Welcome back',
                  style: Theme.of(context).textTheme.titleLarge,
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
                TextFormField(
                  controller: _emailTEController,
                  decoration: const InputDecoration(hintText: 'Email'),
                  validator: (value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your email';
                    }
                    // TODO: Validate email with Regex
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Get.to(()=>const OtpVerificationScreen());
                  }, child: const Text("Get OTP")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
