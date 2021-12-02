import 'package:atividade3/add.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class FinalizadasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas Finalizadas'),
        actions: [ GestureDetector(
            child: Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
        )]
      ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (ctxt, index) {
            return ListTile(
              leading: Checkbox(
                value: true,
                onChanged: (value){},
              ),
              title: Text('Tarefa ${index+1}'),
              subtitle: Text('Descrição da Tarefa'),
              trailing: Icon(Icons.delete, size: 20.0, color: Colors.redAccent,),
            );
          },
        ),

          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return AddScreen();
              }));
            },
          ),
        );
  }
}