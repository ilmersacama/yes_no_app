import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';
import 'package:yes_no_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen());
  }
}
