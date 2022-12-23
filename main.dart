import 'package:flutter/material.dart';
import './MailPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mail',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MailPage(title: 'Mail'),
    );
  }
}
