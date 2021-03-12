import 'package:flutter/material.dart';
import 'package:gerenciapelada/models/pelada.dart';

class PeladaList extends StatelessWidget {
  final List<Pelada> peladas;

  PeladaList(this.peladas);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: peladas.length,
        itemBuilder: (context2, index) {
          final pel = peladas[index];
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    pel.id.toString(),
                  ),
                ),
                Column(
                  //alinhamento em column
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      pel.descricao,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      pel.diasSemana,
                      style: TextStyle(
                        color: Colors.grey[650],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
