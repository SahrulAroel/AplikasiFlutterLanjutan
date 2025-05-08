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
  final List<String> _list = [
    'Bengkalis',
    'Bantan',
    'Selat Kecil',
    'Rupat',
    'Rupat Utara',
    'Bukit Batu',
  ];

  String _item = 'Bengkalis';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Percobaan Menggunakan Widget",
        ), // Fixed "file" to "title"
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ), // Fixed "Edgelnsets" to "EdgeInsets"
        child: Row(
          children: <Widget>[
            const Text("Pilih Kecamatan : "), // Fixed quotes and typo
            DropdownButton<String>(
              value: _item,
              items:
                  _list.map((String val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.location_city,
                          ), // Fixed "icons" to "Icons"
                          const SizedBox(width: 8), // Added spacing
                          Text(val),
                        ],
                      ),
                    );
                  }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _item = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
