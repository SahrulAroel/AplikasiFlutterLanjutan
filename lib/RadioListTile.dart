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
  int _selected = 1; // Default selected value
  String _jenisKelamin = 'Perempuan'; // Default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text("Jenis Kelamin"),
            RadioListTile<int>(
              value: 0,
              groupValue: _selected,
              title: const Text('Laki-laki'),
              activeColor: Colors.green,
              secondary: const Icon(Icons.person),
              onChanged: (int? value) {
                setState(() {
                  _selected = value!;
                  _jenisKelamin = 'Laki-laki';
                });
              },
            ),
            RadioListTile<int>(
              value: 1,
              groupValue: _selected,
              title: const Text('Perempuan'),
              activeColor: Colors.green,
              secondary: const Icon(Icons.person),
              onChanged: (int? value) {
                setState(() {
                  _selected = value!;
                  _jenisKelamin = 'Perempuan';
                });
              },
            ),
            Text('Anda memilih: $_jenisKelamin'),
          ],
        ),
      ),
    );
  }
}
