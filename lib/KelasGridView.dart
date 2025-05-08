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
  final List<String> _names = [
    'facebook',
    'instagram',
    'youtube',
    'twitter',
    'whatsapp',
    'linkedin',
    'google-plus',
    'snapchat',
    'skype',
    'spotify',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(_names.length, (index) {
          return GridTile(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/${_names[index]}.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
