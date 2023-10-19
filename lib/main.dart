import 'package:flutter/material.dart';
import 'package:helpmate/routes/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteManager.onGenerateRoute,
      initialRoute: RouteManager.splash,
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}
