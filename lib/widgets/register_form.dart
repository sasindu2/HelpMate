import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpmate/misc/constants.dart';

import '../misc/validators.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            height: 70,
          ),
          const SizedBoxH20(),
          const Text(
            "Sign Up",
            style: TextStyle(
                fontFamily: "SF-Pro",
                fontSize: 25.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold),
          ),
          const SizedBoxH20(),
          TextFormField(
            validator: validateName,
            controller: nameController,
            decoration: formDecoration(
              "Name",
              Icons.person_outline,
            ),
          ),
          const SizedBoxH10(),
          TextFormField(
            validator: validateEmail,
            controller: emailController,
            decoration: formDecoration(
              "Email",
              Icons.mail_outline,
            ),
          ),
          const SizedBoxH10(),
          TextFormField(
            validator: validatePassword,
            controller: passwordController,
            decoration: formDecoration(
              "Password",
              Icons.lock_outline,
            ),
          ),
          const SizedBoxH10(),
          TextFormField(
            validator: validateConfirmPassword,
            controller: confirmPasswordController,
            decoration: formDecoration(
              "Confirm Password",
              Icons.lock_outline,
            ),
          ),
          const SizedBoxH10(),
          TextFormField(
            validator: validatePhoneNumber,
            controller: phoneNumberController,
            decoration: formDecoration(
              "Phone Number",
              Icons.phone_outlined,
            ),
          ),
          const SizedBoxH20(),
          CupertinoButton(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: Colors.purple,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: "SF-Pro",
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {}),
        ],
      ),
    ));
  }
}
