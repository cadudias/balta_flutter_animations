import 'package:balta_flutter_animations/login/login.page.dart';
import 'package:balta_flutter_animations/themes/dark.theme.dart';
import 'package:balta_flutter_animations/themes/light.theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme(),
      home: LoginPage(),
    );
  }
}
