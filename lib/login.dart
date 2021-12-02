import 'package:atividade3/newuser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'finalizadas.dart';



class LoginScreen extends StatelessWidget {
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
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
          child: const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder()
            ),
            obscureText: true,
          ),
          ),
            Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
              child: ElevatedButton(
              child: const Text('ENTRAR'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 70, vertical: 16
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return FinalizadasScreen();
                  }));
                },
            ),
          ),
            Padding(padding: EdgeInsets.fromLTRB(0, 32, 0, 8),
              child: const Text(
                'Não tem uma conta?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
            child: ElevatedButton(
                child: const Text('CADASTRE-SE'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 12
                  ),
                  textStyle: const TextStyle(fontSize: 12),
                ),
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return NovouserScreen();
                  }));
                },
            ),
          ),
        ],
      ),
    );
  }
}