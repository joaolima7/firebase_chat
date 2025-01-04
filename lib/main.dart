import 'package:firebase_chat/app.dart';
import 'package:firebase_chat/core/di/injection.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  Inject.init();
  runApp(const App());
}
