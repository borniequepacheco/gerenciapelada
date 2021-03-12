import 'package:flutter/material.dart';
import 'package:gerenciapelada/components/pelada_user.dart';

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tampinha'),
        centerTitle: true,
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
            PeladaUser(),
          ],
        ),
      ),
    );
  }
}
