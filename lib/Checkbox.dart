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
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  bool _checkboxVal1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Mengunakan Widget')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text('Bahasa Pemrograman yang Anda Kuasai:'),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal1,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal1 = value!;
                    });
                  },
                ),
                const Text('Python'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
