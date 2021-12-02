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
        body:Row(
              children: [
                Expanded(
                    flex:3,
                    child: Image.asset('assets/space.jpg')
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    color:Colors.cyan,
                    child: const Text('1')
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    color:Colors.pinkAccent,
                    child: const Text('2')
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    color:Colors.amber,
                    child: const Text('3')
                  ),
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


