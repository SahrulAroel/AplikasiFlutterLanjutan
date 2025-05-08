import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Percobaan Mengunakan Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Container(
        color: Colors.blue,
        width: 250,
        height: 100,
        padding: EdgeInsets.all(10),
        child: const Text(
          'RPL Polbeng',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ), // Padding added here
      ),
    );
  }
}
