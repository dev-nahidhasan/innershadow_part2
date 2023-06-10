import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inner Shadow',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: Center(
        child: Container(
          width: 180,
          height: 180,
          child: Icon(
            Icons.apple,
            color: Colors.white,
            size: 90,
          ),
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade300,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple.shade700,
                offset: Offset(5.00, 5.00),
                blurRadius: 10,
                spreadRadius: 1,
                inset: true,
              ),
              BoxShadow(
                color: Colors.deepPurple.shade200,
                offset: Offset(-5.00, -5.00),
                blurRadius: 10,
                spreadRadius: 1,
                inset: true,
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple.shade200,
                Colors.deepPurple.shade400,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                09,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
