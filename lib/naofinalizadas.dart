import 'package:flutter/material.dart';

class NaoFinalizadasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas Não Finalizadas'),
      ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (ctxt, index) {
            return ListTile(
              leading: Checkbox(
                value: false,
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
        onPressed: (){},
      ),
    );
  }
}