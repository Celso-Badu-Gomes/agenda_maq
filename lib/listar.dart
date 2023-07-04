import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Itens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        '/listLoc': (context) => ListLoc(),
        '/listMaq': (context) => ListMaq(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Itens'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listLoc');
                },
                child: const Text('Listar Localidades'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listMaq');
                },
                child: const Text('Listar Máquinas'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListLoc extends StatelessWidget {
  final List<String> items = [
    'Localidade 1',
    'Localidade 2',
    'Localidade 3',
    'Localidade 4',
    'Localidade 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Localidades'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}

class ListMaq extends StatelessWidget {
  final List<String> items = [
    'Maquina 1',
    'Maquina 2',
    'Maquina 3',
    'Maquina 4',
    'Maquina 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de maquinas'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
