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
      appBar: AppBar(
        title: const Text(
          "Percobaan Menggunakan Widget",
        ), // Fixed typo in title
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ), // Fixed "Edgelnsets" to "EdgeInsets"
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text("Tekan tombol di bawah ini"), // Added quotes
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, // Fixed "0,0" to proper empty function
        backgroundColor: Colors.blueAccent,
        tooltip: 'Like',
        icon: const Icon(Icons.thumb_up), // Fixed "icons" to "Icons"
        label: const Text('Like'),
      ),
    );
  }
}
