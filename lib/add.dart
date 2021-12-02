import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:atividade3/finalizadas.dart';


class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Nova Tarefa'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
            child: const TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Nome da Tarefa',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
            child: const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Descrição da Tarefa',
                  border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
            child: ElevatedButton(
                child: const Text('ADICIONAR TAREFA'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 70, vertical: 16
                  ),
                  textStyle: const TextStyle(fontSize: 12),
                ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return FinalizadasScreen();
                }));
              },
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 16, 50, 8),
            child: ElevatedButton(
              child: const Text('CANCELAR'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 8
                ),
                textStyle: const TextStyle(fontSize: 12),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return FinalizadasScreen();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}