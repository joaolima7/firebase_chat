import 'package:firebase_chat/src/features/chat/presentation/view/chat_screen.dart';
import 'package:firebase_chat/src/features/auth/presentation/view/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const AuthScreen(),
        '/chat': (context) => const ChatScreen(),
      },
    );
  }
}
