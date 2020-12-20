import 'package:flutter/material.dart';
import 'package:mtechtutorial/pages/home_page.dart';
// import 'package:mtechtutorial/pages/home_page.dart';
import 'package:mtechtutorial/pages/login_page.dart';
import 'package:mtechtutorial/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true
          ? Homepage()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        Homepage.routeName: (context) => Homepage(),
      },
    );
  }
}
