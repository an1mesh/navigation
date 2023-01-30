import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Second Page'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter UserName',
              style: TextStyle(fontSize: 30.0),
            ),
            TextField(
              controller: myController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                border: InputBorder.none,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thirdpage',
                    arguments: myController.text.toString());
              },
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
