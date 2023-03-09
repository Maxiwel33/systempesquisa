import 'package:flutter/material.dart';
import 'package:opsystem/pages/questoes3.dart';

class QuestoesPage2 extends StatelessWidget {
  const QuestoesPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pesquisa de Opnião - 2"),
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
                'O que voce acha de Administração Púclica?',
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
                  'Ótima',
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
                  'Bom',
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
                  'Mais ou Menos',
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
                  'Ruim',
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
                  'Péssima',
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
                  'Tem que trocar(Substituir)',
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
                    MaterialPageRoute(builder: (_) => const QuestoesPage3()));
              },
              child: const Text('Proximo'))
        ],
      ),
    );
  }
}
