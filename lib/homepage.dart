import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = '';
  HomePage(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('First Page')),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello $name',
              style: TextStyle(fontSize: 30.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.login),
        label: const Text('Login'),
        onPressed: () {
          Navigator.pushNamed(context, '/secondpage');
        },
      ),
    );
  }
}
