import 'package:bankdetails/firebase_options.dart';
import 'package:bankdetails/views/login.dart';
import 'package:bankdetails/views/main_page.dart';
import 'package:bankdetails/views/signin.dart';
// import 'package:bankdetails/views/login.dart';
import 'package:bankdetails/views/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: Main_Page(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      // theme: Theme.of(context));
    );
  }
}
