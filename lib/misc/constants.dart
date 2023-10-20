import 'package:flutter/material.dart';

InputDecoration formDecoration(String labelText, IconData iconData) {
  return InputDecoration(
    errorStyle: const TextStyle(fontSize: 10),
    prefixIcon: Icon(
      iconData,
      color: Colors.purple,
    ),
    errorMaxLines: 3,
    labelText: labelText,
    labelStyle: const TextStyle(color: Colors.purple),
    enabledBorder: enabledBorder,
    focusedBorder: focusedBorder,
    errorBorder: errorBorder,
  );
}

const enabledBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    borderSide: BorderSide(width: 1, color: Colors.indigoAccent));

const focusedBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      width: 2,
      color: Colors.indigoAccent,
    ));

const errorBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      width: 2,
      color: Colors.red,
    ));

//Divider box

class SizedBoxH10 extends StatelessWidget {
  const SizedBoxH10({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class SizedBoxH20 extends StatelessWidget {
  const SizedBoxH20({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

class SizedBoxH30 extends StatelessWidget {
  const SizedBoxH30({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}

class SizedBoxH50 extends StatelessWidget {
  const SizedBoxH50({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
    );
  }
}
