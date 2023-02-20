import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SB Stats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(
        title: '',
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SB Stats'),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Row(
        children: [
          Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Menu bar'),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Center(
                child: Text('Main content'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Log in'),
              onPressed: () {
                // TODO: Implement login functionality.
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Create account'),
              onPressed: () {
                // TODO: Implement create account functionality.
              },
            ),
          ],
        ),
      ),
    );
  }
}
