import 'package:flutter/material.dart';
import 'screens/intro_screen.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Up ToDo',
      debugShowCheckedModeBanner: false,
      theme:darkTheme,
        initialRoute: '/',
      routes: {
        '/': (context) => IntroScreen(),
        '/home': (context) => HomeScreen(username: 'User'), 
        
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

