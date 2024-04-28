import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailOrPhoneLoginScreen extends StatefulWidget {
  const EmailOrPhoneLoginScreen({super.key});

  @override
  State<EmailOrPhoneLoginScreen> createState() =>
      _EmailOrPhoneLoginScreenState();
}

class _EmailOrPhoneLoginScreenState extends State<EmailOrPhoneLoginScreen> {
  final TextEditingController _emailTEController=TextEditingController();
  final TextEditingController _passwordTEController=TextEditingController();
final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  bool passwordVisible = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Form(
              key: _formKey,
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
                    TextFormField(
                      controller: _emailTEController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: "Input Email",
                      ),
                    ),
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
                    passwordInputTextField(context,_passwordTEController),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: Theme.of(context).colorScheme.surfaceTint,
                            value: false, onChanged: (value) {
        
                        }),
                        const Text("Save Password"),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Log In"),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget passwordInputTextField(BuildContext context,passwordTEController) {
    return TextFormField(
                controller: passwordTEController,
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
}
