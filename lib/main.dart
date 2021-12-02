import 'dart:io';

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
        body: const Center(child: Image(image: NetworkImage('https://images.unsplash.com/photo-1595856984276-8f6d5e979f4d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'))),
        floatingActionButton: FloatingActionButton(
          child: const Text('+'),
          onPressed: (){},
        ),
      );
  }
}


