import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sangeet/screens/bottom_bar/master_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Sangeet());
}

bool isDark = false;

class Sangeet extends StatelessWidget {
  const Sangeet({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: isDark ? Colors.black54 : Colors.white,
      ),
      home: Master(),
    );
  }
}
