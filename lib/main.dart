import 'package:flutter/material.dart';
import 'package:uidesign04/Home_page.dart';
import 'package:uidesign04/core/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants App',
      debugShowCheckedModeBanner: false,
      theme: Styles.themeDta(),
      home: HomePage(),
    );
  }
}
