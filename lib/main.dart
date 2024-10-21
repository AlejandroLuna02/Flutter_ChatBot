import 'package:chat_bot2/Pages/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatbot App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/', 
      routes: {
        '/': (context) => SplashScreen(),  
        '/home': (context) => HomeScreen(), 
        '/chat': (context) => ChatScreen(), 
      },
    );
  }
}
