import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  HttpOverrides.global= MyHttpoverrides();
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class MyHttpoverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Text('hello'),
                Text('world')
              ],
            ),
            Container(
                child: const Text('one'),
                color:Colors.amber,
                padding: const EdgeInsets.all(20.0)
            ),
            Container(
                child: const Text('two'),
                color:Colors.pinkAccent,
                padding: const EdgeInsets.all(30.0)
            ),
            Container(
                child: const Text('three'),
                color:Colors.cyan,
                padding: const EdgeInsets.all(40.0)
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text('+'),
          onPressed: (){},
        ),
      );
  }
}


