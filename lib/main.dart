import 'package:flutter/material.dart';
import 'package:my_contact/theme.dart';
import 'package:my_contact/contact_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(), 
      home: ContactWidget(),
    );
  }
}
