import 'package:flutter/material.dart';
import 'package:untitled1/chat_page.dart';
import 'package:untitled1/counter_stateful_demo.dart';
import 'package:untitled1/login_page.dart';


void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(primarySwatch: Colors.deepPurple, appBarTheme: AppBarTheme(backgroundColor: Colors.blue, foregroundColor: Colors.black)),
      home: LoginPage(),
        // CounterStateFul(buttonColor: Colors.blue)
    );
  }

}

