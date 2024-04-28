import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens_exporter.dart';


class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> gender = ["Male", "Female", "Others"];
  var _selectedVal;
  bool _isButtonActive=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _authAppBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            onChanged: (){
              setState(() {
                _isButtonActive=_formKey.currentState!.validate();
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 48,
                ),

                Text(
                  "Create Your Profile",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: "Inter"),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Get started with us with your details',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "First Name",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 4,
                ),
                _firstNameTextField(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Last Name",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 4,
                ),
                _lastNameTextField(),
                const SizedBox(
                  height: 16,
                ),
                _genderDropdownButton(),
                const SizedBox(
                  height: 16,
                ),
                _nextButton(),
                const SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _loginButton(context),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _forgotPasswordButton(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _nextButton() {
    return SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _isButtonActive && _selectedVal!=null?(){Get.offAll(()=>const SendOtpToEmailOrPhoneScreen());}
                      :null,
                    child: const Text("Next"),
                  ),);
  }

  SizedBox _genderDropdownButton() {
    return SizedBox(
                width: double.infinity,
                child: DropdownButton(
                  hint: const Text("Chose Gender"),
                  items: gender
                      .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(item)))
                      .toList(),
                  value: _selectedVal,
                  onChanged: (value) {
                    setState(() {
                      _selectedVal=value;
                    });
                  },
                ),

              );
  }

  TextFormField _lastNameTextField() {
    return TextFormField(
                controller: _lastNameTEController,
                decoration: const InputDecoration(hintText: 'Last name'),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter last name';
                  }
                  return null;
                },
              );
  }

  TextFormField _firstNameTextField() {
    return TextFormField(
                controller: _firstNameTEController,
                decoration: const InputDecoration(hintText: 'First name'),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter first name';
                  }
                  return null;
                },
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
  TextButton _loginButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.to(() => const EmailOrPhoneLoginScreen());
      },
      child: Text(
        "Back to Login",
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w700),
      ),
    );
  }
  TextButton _forgotPasswordButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.to(() => const SendOtpToEmailOrPhoneScreen());
      },
      child: Text(
        "Forgot/Change Password",
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    super.dispose();
  }
}
