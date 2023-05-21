import 'package:flutter/material.dart';
import 'package:pet_food_scanner/screens/onboarding.dart';
import 'package:pet_food_scanner/screens/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? isviewed = prefs.getInt('onBoard');

  runApp(MaterialApp(
    home: isviewed != 0 ? const Onboarding() : const SignIn(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Onboarding(),
    );
  }
}
