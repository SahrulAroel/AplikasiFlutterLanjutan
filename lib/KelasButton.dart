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
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Elevated Button',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              const SizedBox(height: 5.0),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Outline Button',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              const SizedBox(height: 5.0),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Text Button',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
