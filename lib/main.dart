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
      theme: ThemeData(
        primaryColor: Colors.green[800],
        accentColor: Colors.amber,
        fontFamily: 'RocknRollOne',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline4: TextStyle(
                fontFamily: 'RocknRollOne',
                fontWeight: FontWeight.bold,
              ),
              subtitle2: TextStyle(
                fontFamily: 'RocknRollOne',
                color: Colors.grey[500],
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontFamily: 'RocknRollOne',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Pelada> _peladas = [
    /* Pelada(
      id: '0.00001',
      descricao: 'Ginasio esportes',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00002',
      descricao: 'Dom Alano',
      diasSemana: 'domingo',
    ), */
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

    Navigator.of(context).pop(); //fechar tela (Modal) de add item lista
  }

  _openPeladasFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return PeladasForm(_addPelada);
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
              child: Card(
                // color: Theme.of(context).accentColor,

                child: Text(
                  'Cadastro de pelada',
                  textAlign: TextAlign.center,
                ),

                elevation: 5,
              ),
            ),
            PeladaList(_peladas),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => _openPeladasFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
