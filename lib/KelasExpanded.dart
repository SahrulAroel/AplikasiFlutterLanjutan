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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child: Container(color: Colors.red)),
            Expanded(child: Container(color: Colors.orange)),
            Expanded(child: Container(color: Colors.yellow)),
            Expanded(child: Container(color: Colors.green)),
            Expanded(child: Container(color: Colors.blue)),
            Expanded(child: Container(color: Colors.indigo)),
            Expanded(child: Container(color: Colors.purple)),
          ],
        ),
      ),
    );
  }
}
