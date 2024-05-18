import 'package:flutter/material.dart';
import 'package:pay_app/screens/ContactView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 147, 229, 250),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 42, 51, 59),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ContactView(contactName: "Thrivedhi", contactNum: "966613308"),
    );
  }
}

