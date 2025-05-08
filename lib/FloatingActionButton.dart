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
        ), // Fixed "file" to "title"
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceAround, // Fixed "spacsAround" to "spaceAround"
            children: const <Widget>[Text("Tekan tombol di bawah ini")],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        tooltip: 'Navigation', // Fixed "toolip" to "tooltip"
        child: const Icon(
          Icons.navigation,
        ), // Fixed "icon" to "Icon" and "icons" to "Icons"
      ),
    );
  }
}
