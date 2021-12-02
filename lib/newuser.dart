import 'package:atividade3/finalizadas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import 'login.dart';



class NovouserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(size: 96.0),
          const Text(
            'To Do App',
            style: TextStyle(

              fontSize: 24.0,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
            child: const TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Nome de Usuário',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
            child: const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
            child: const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: 'Confirme sua Senha',
                  border: OutlineInputBorder()
              ),
              obscureText: true,
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
            child: ElevatedButton(
                child: const Text('CADASTRE-SE'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 70, vertical: 16
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return FinalizadasScreen();
                  }));
                },
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
            child: ElevatedButton(
              child: const Text('VOLTAR'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 16
                ),
                textStyle: const TextStyle(fontSize: 12),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}