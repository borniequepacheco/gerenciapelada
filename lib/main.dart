import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gerenciapelada/components/pelada_form.dart';
import 'components/pelada_list.dart';
import 'models/pelada.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _peladas = [
    Pelada(
      id: '0.00001',
      descricao: 'Ginasio esportes',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00002',
      descricao: 'Dom Alano',
      diasSemana: 'domingo',
    ),
  ];

  _addPelada(String descricao, String diasSemana) {
    final newPelada = Pelada(
      id: Random().nextDouble().toStringAsFixed(5),
      descricao: descricao,
      diasSemana: diasSemana,
    );

    setState(() {
      _peladas.add(newPelada);
    });
  }

  _openPeladasFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return PeladasForm(null);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tampinha'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _openPeladasFormModal(context),
            //PeladasForm(_addPelada),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              // width: double.infinity,
              child: Card(
                color: Colors.lightBlue,
                child: Text(
                  'Cadastro de pelada',
                  textAlign: TextAlign.center,
                ),
                elevation: 15,
              ),
            ),
            PeladaList(_peladas),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openPeladasFormModal(context),
      ),
    );
  }
}
