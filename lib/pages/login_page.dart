import 'package:flutter/material.dart';

import '../misc/constants.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBoxH50(),
                      Image.asset(
                        'assets/logo.png',
                        height: 60,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBoxH20(),
                      const Text(
                        "Log In",
                        style: TextStyle(
                            fontFamily: "SF-Pro",
                            fontSize: 25.0,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: LoginForm(),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
