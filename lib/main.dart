import 'package:flutter/material.dart';
import 'package:intro_app/pages/DashboardAdmin/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/intro_page.dart';

// void main() {
//   runApp(const MyApp());
// }

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.flu
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // scaffoldBackgroundColor: bgColor,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
    );
  }
}

