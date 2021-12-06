import 'package:flutter/material.dart';
import 'package:time_app/pages/choose_location.dart';
import 'package:time_app/pages/home.dart';
import 'package:time_app/pages/loading.dart';
import 'dart:io';

void main() {
  HttpOverrides.global= MyHttpoverrides();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const ChooseLocation(),
    }
  ));
}

class MyHttpoverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
