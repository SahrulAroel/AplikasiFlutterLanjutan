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
  int _selected = -1; // -1 means no selection initially

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text("Jenis Kelamin"),
            Row(
              children: <Widget>[
                Radio<int>(
                  value: 0,
                  groupValue: _selected,
                  onChanged: (int? value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                const Text("Laki-laki"),
              ],
            ),
            Row(
              children: <Widget>[
                Radio<int>(
                  value: 1,
                  groupValue: _selected,
                  onChanged: (int? value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                const Text("Perempuan"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
