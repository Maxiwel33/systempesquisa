import 'package:flutter/material.dart';
import 'package:opsystem/pages/questoes.dart';

class QuestoesPage3 extends StatelessWidget {
  const QuestoesPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pesquisa de Opnião -3 "),
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
                'Caxias hoje Merece um(a) ?',
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                'Melhorias para o cidade e para os moradores',
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
                  'Fábricas',
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
                  'Cursinhos Grátis',
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
                  'Insentivos a cultura',
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
                  'Oficinas de empreendedorismo',
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
                  'Treinamento junto ao senac',
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
                  'Concurso Público',
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
                    MaterialPageRoute(builder: (_) => const QuestoesPage()));
              },
              child: const Text('Voltar'))
        ],
      ),
    );
  }
}
