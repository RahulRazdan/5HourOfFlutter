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
        body: Center(child: Column(
          children: [
            Image(image: AssetImage('assets/space.jpg')),
            Icon(Icons.airport_shuttle),
            Icon(CupertinoIcons.book,size: 50),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.mail)),
            ElevatedButton(onPressed: (){}, child: const Text('Click Me')),
            TextButton(onPressed:  (){}, child: const Text('Click Me'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)))
          ],
        )),
        floatingActionButton: FloatingActionButton(
          child: const Text('+'),
          onPressed: (){},
        ),
      );
  }
}


