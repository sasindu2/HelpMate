import 'package:flutter/material.dart';

import '../misc/constants.dart';
import '../misc/validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
            TextFormField(
              textInputAction: TextInputAction.continueAction,
              validator: validateEmail,
              controller: emailController,
              decoration: formDecoration(
                'Email address',
                Icons.mail_outline,
              ),
            ),
            TextFormField(
              textInputAction: TextInputAction.done,
              validator: validatePassword,
              controller: passwordController,
              decoration: formDecoration(
                'Password',
                Icons.lock_outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
