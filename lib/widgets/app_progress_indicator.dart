import 'package:flutter/material.dart';

class AppProgressingIndicator extends StatelessWidget {
  const AppProgressingIndicator({Key? key, this.text = ""}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        color: Colors.white,
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LinearProgressIndicator(
              color: Colors.purple,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            )
          ],
        )),
      ),
    );
  }
}
