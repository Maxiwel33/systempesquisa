import 'package:flutter/material.dart';
import 'package:opsystem/pages/questoes2.dart';

class QuestoesPage extends StatelessWidget {
  const QuestoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pesquisa de Opnião -1 "),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          const Card(
            child: ListTile(
              leading: Icon(
                Icons.access_alarm,
                size: 40,
                color: Colors.green,
              ),
              title: Text(
                'O que o Bairro precisa no momento!',
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                'Melhorias para o bairro e para os moradores',
                style: TextStyle(fontSize: 10),
              ),
              isThreeLine: true,
            ),
          ),
          GestureDetector(
            onTap: () {
              print('clicou em mim');
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.access_alarm,
                  size: 30,
                  color: Colors.red,
                ),
                title: Text(
                  'Saneamento Básico',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(Icons.check),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => print('Saude'),
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.access_alarm,
                  size: 30,
                  color: Colors.red,
                ),
                title: Text(
                  'Posto de Saúde',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(Icons.check),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => print('Limpeza'),
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.access_alarm,
                  size: 30,
                  color: Colors.red,
                ),
                title: Text(
                  'Limpeza Pública',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(Icons.check),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => print('Lazer, Diversao'),
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.access_alarm,
                  size: 30,
                  color: Colors.red,
                ),
                title: Text(
                  'Lazer, diversao e projetos',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(Icons.check),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => print('Escolas Publicas'),
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.access_alarm,
                  size: 30,
                  color: Colors.red,
                ),
                title: Text(
                  'Escolas e Creche',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(Icons.check),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => print('Segurança Pública'),
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.access_alarm,
                  size: 30,
                  color: Colors.red,
                ),
                title: Text(
                  'Segurança Pública',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(Icons.check),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const QuestoesPage2()));
              },
              child: const Text('Proximo'))
        ],
      ),
    );
  }
}
