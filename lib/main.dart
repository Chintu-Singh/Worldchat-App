import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flashchat_flutter/screens/welcome_screen.dart';
import 'package:flashchat_flutter/screens/login_screen.dart';
import 'package:flashchat_flutter/screens/registration_screen.dart';
import 'package:flashchat_flutter/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
