import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpmate/routes/route_manager.dart';

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
            const SizedBoxH10(),
            TextFormField(
              textInputAction: TextInputAction.next,
              validator: validateEmail,
              controller: emailController,
              decoration: formDecoration(
                'Email ',
                Icons.mail_outline,
              ),
            ),
            const SizedBoxH10(),
            TextFormField(
              textInputAction: TextInputAction.done,
              validator: validatePassword,
              controller: passwordController,
              decoration: formDecoration(
                'Password',
                Icons.lock_outline,
              ),
            ),
            //forgot password
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot password?",
                      style: style16Black,
                    ))
              ],
            ),
            const SizedBoxH10(),
            CupertinoButton(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: Colors.purple,
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: "SF-Pro",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, RouteManager.homePage);
                }),
            const SizedBoxH10(),
            const Text(
              'OR',
              style: TextStyle(
                  fontFamily: "SF-Pro",
                  fontSize: 20.0,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBoxH10(),
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
                onPressed: () {
                  Navigator.popAndPushNamed(context, RouteManager.registerPage);
                })
          ],
        ),
      ),
    );
  }
}
