import 'package:flutter/material.dart';
import 'package:helpmate/routes/route_manager.dart';
import 'package:helpmate/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.popAndPushNamed(context, RouteManager.loginPage);
      //       },
      //       icon: const Icon(
      //         Icons.arrow_back_ios_new_sharp,
      //         color: Color.fromARGB(255, 0, 0, 0),
      //       )),
      //   backgroundColor: Colors.white,
      //   //title: const Text(
      //   // "Sign Up",
      //   // style: style16Black,
      //   //),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: SingleChildScrollView(
                child: RegisterForm(),
              ),
            ),
          )
        ],
      )),
    );
  }
}
