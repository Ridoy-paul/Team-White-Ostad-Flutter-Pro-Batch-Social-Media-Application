import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/presentation_utilities/form_validator.dart';
import 'package:team_white_social_media_app/presentation/screens/main_bottom_nav_screen/main_bottom_nav_screen.dart';

class EmailOrPhoneLoginScreen extends StatefulWidget {
  const EmailOrPhoneLoginScreen({super.key});

  @override
  State<EmailOrPhoneLoginScreen> createState() =>
      _EmailOrPhoneLoginScreenState();
}

class _EmailOrPhoneLoginScreenState extends State<EmailOrPhoneLoginScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  bool isChecked = false;
  bool _isButtonActive = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _authAppBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Form(
              key: _formKey,
              onChanged: () {
                setState(() {
                  _isButtonActive = _formKey.currentState!.validate();
                });
              },
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Your Email And Password",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontFamily: "Inter"),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Email",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    _emailTextField(),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Password",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    _passwordTextField(context, _passwordTEController),
                    const SizedBox(
                      height: 4,
                    ),
                    _savePasswordCheckBox(context),
                    const SizedBox(
                      height: 32,
                    ),
                    _loginButton(),
                  ]),
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
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
    );
  }

  TextFormField _emailTextField() {
    return TextFormField(
      controller: _emailTEController,
      validator: (value) => FormValidator.emailValidator(value),
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        hintText: "Input Email",
      ),
    );
  }

  Widget _loginButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor:const Color(0xffdae4ff),
        ),
        onPressed: _isButtonActive
            ? () {
                Get.to(() => const MainBottomNavScreen());
              }
            : null,
        child: const Text("Log In"),
      ),
    );
  }

  Widget _savePasswordCheckBox(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            activeColor: Theme.of(context).colorScheme.surfaceTint,
            value: isChecked,
            onChanged: (value) {
              if (isChecked) {
                setState(() {
                  isChecked = false;
                });
              } else {
                setState(() {
                  isChecked = true;
                });
              }
            }),
        const Text("Save Password"),
      ],
    );
  }

  Widget _passwordTextField(BuildContext context, passwordTEController) {
    return TextFormField(
      controller: _passwordTEController,
      validator: (value) => FormValidator.inputValidator(value),
      obscureText: !passwordVisible,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock_outline),
        hintText: "Input Password",
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            passwordVisible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          onPressed: () {
            //Toggle the state of passwordVisible variable
            setState(() {
              passwordVisible = !passwordVisible;
            });
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailTEController;
    _passwordTEController;
    super.dispose();
  }
}
