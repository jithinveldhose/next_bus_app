import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:next_bus_app/presentation/login.dart';
import 'package:next_bus_app/presentation/splashscreen.dart';

import 'presentation/otp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "splash",
      routes: {
        'splash': (context) => const SplashScreen(),
        'login': (context) => const LoginScreen(),
        'otp': (context) => const OtpScreen()
      },
    );
  }
}
