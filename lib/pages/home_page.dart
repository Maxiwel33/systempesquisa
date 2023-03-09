import 'package:flutter/material.dart';
import 'package:opsystem/pages/google.dart';

import 'package:opsystem/pages/master.dart';
import 'package:opsystem/pages/questoes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        elevation: 0,
        title: const Text('Pesquisas'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: buildWelcome(''),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.orange,
            Colors.red,
          ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 12,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                categorias(Icons.person, Colors.white, Colors.green,
                    () => onclickNavigator(context, const MasterPage())),
                categorias(
                    Icons.admin_panel_settings,
                    Colors.white,
                    Colors.blue,
                    () => onclickNavigator(context, const QuestoesPage())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                categorias(Icons.map, Colors.white, Colors.red,
                    () => onclickNavigator(context, const GooglePage())),
                categorias(Icons.bar_chart, Colors.white, Colors.amber,
                    () => onclickNavigator(context, const QuestoesPage())),
              ],
            ),
            _popularTexto(),
            _informar()
          ],
        ),
      ),
    );
  }

  Widget buildWelcome(String userName) => Column(
        //    mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            'Ola',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      );
}

Widget categorias(
    IconData icon, Color color, Color ccolor, Function() onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Center(
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        margin: const EdgeInsets.all(12),
        height: 160,
        width: 150,
        decoration: BoxDecoration(
          color: ccolor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          icon,
          color: color,
          size: 90,
        ),
      ),
    ),
  );
}

onclickNavigator(context, Widget page) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => page,
      ));
}

_popularTexto() {
  return Container(
    height: 40,
    width: 380,
    alignment: Alignment.topLeft,
    child: const Text(
      'Popular',
      style: TextStyle(
        fontSize: 30,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

_informar() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.yellow,
    ),
    height: 90,
    width: 380,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [],
    ),
  );
}
