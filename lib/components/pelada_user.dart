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
    Pelada(
      id: '0.00005',
      descricao: 'Ginasio esportes',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00006',
      descricao: 'Dom Alano',
      diasSemana: 'domingo',
    ),
    Pelada(
      id: '0.00007',
      descricao: 'Ginasio',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00008',
      descricao: 'Dom pedro',
      diasSemana: 'domingo',
    ),
    Pelada(
      id: '0.00009',
      descricao: 'Ginasio',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00010',
      descricao: 'Dom pedro',
      diasSemana: 'domingo',
    ),
    Pelada(
      id: '0.00012',
      descricao: 'Dom Alano',
      diasSemana: 'domingo',
    ),
    Pelada(
      id: '0.00013',
      descricao: 'Ginasio',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00014',
      descricao: 'Dom pedro',
      diasSemana: 'domingo',
    ),
    Pelada(
      id: '0.00015',
      descricao: 'Ginasio esportes',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00016',
      descricao: 'Dom Alano',
      diasSemana: 'domingo',
    ),
    Pelada(
      id: '0.00017',
      descricao: 'Ginasio',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00018',
      descricao: 'Dom pedro',
      diasSemana: 'domingo',
    ),
    Pelada(
      id: '0.00019',
      descricao: 'Ginasio',
      diasSemana: 'seg qua sex',
    ),
    Pelada(
      id: '0.00011',
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
        PeladaList(_peladas),
        PeladasForm(_addPelada),
      ],
    );
  }
}
