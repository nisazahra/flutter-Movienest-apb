import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movienest2/pages/FavoritePage.dart';
import 'package:movienest2/pages/HomePage.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movienest2/pages/LoginPage.dart';
import 'package:movienest2/pages/ProfilePage.dart';
import 'package:movienest2/pages/RegisterPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //to hide status bar and below buttons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 16, 18, 24),
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/register": (context) => HomePage(),
        "/home": (context) => HomePage(),
        "/favorite": (context) => FavoritePage(),
        "/profile": (context) => profilePage(),
      },
    );
  }
}
