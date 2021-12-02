import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'finalizadas.dart';
import 'add.dart';
import 'naofinalizadas.dart';
import 'newuser.dart';


void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do App",
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: LoginScreen()
    );
  }
}







//Componentes e Classes do Layout (O CSS do negoço)
class ContainerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: const FlutterLogo(size: 64.0),
    margin: const EdgeInsets.all(24),
    padding: EdgeInsets.zero,
    decoration: const BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.blue,
    ),
    );
  }
}

class ContainerChildLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          FlutterLogo(size: 64.0),
          FlutterLogo(size: 64.0),
          FlutterLogo(size: 64.0),
        ],
      ),
    );
  }
}