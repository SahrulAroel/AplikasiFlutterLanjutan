import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  void _submitLogin() {
    if (usernameCtrl.text == "Bobi Satria" && passwordCtrl.text == "12345678") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CalculatorScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Username atau password salah")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.person, size: 80, color: Colors.blue),
              const SizedBox(height: 20),
              TextField(
                controller: usernameCtrl,
                decoration: const InputDecoration(labelText: "Username"),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordCtrl,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitLogin,
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final num1Ctrl = TextEditingController();
  final num2Ctrl = TextEditingController();
  String result = "";

  void _calculate() {
    int? a = int.tryParse(num1Ctrl.text);
    int? b = int.tryParse(num2Ctrl.text);
    if (a == null || b == null) {
      setState(() => result = "Masukkan angka yang valid");
    } else {
      setState(() => result = "$a + $b = ${a + b}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator UTS")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: num1Ctrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Nilai 1"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: num2Ctrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Nilai 2"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _calculate, child: const Text("+")),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
