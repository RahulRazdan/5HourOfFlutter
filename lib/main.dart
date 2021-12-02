import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Testing'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange[500],
        ),
        body: const Center(child: Text('Hello',style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color:Colors.teal,
            fontFamily: 'Ubuntu'
        ),)),
        floatingActionButton: FloatingActionButton(
          child: const Text('+'),
          onPressed: (){},
        ),
      );
  }
}


