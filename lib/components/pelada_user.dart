import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gerenciapelada/components/pelada_form.dart';
import 'package:gerenciapelada/components/pelada_list.dart';
import 'package:gerenciapelada/models/pelada.dart';

class PeladaUser extends StatefulWidget {
  @override
  _PeladaUserState createState() => _PeladaUserState();
}

class _PeladaUserState extends State<PeladaUser> {
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
    Pelada(
      id: '0.00003',
      descricao: 'Ginasio',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00004',
      descricao: 'Dom pedro',
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PeladasForm(_addPelada),
        PeladaList(_peladas),
      ],
    );
  }
}
