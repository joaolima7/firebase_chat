import 'package:firebase_chat/src/features/chat/presentation/view/chat_screen.dart';
import 'package:firebase_chat/src/features/login/presentation/view/login_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/chat': (context) => const ChatScreen(),
      },
    );
  }
}
