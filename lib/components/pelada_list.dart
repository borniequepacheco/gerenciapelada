import 'package:flutter/material.dart';
import 'package:gerenciapelada/models/pelada.dart';

class PeladaList extends StatelessWidget {
  final List<Pelada> peladas;

  PeladaList(this.peladas);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: peladas.isEmpty
          ? Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Nenhuma pelda cadastrada!',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: 20,
                ),
/*                 Container(
                  height: 30,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ), */
              ],
            )
          : ListView.builder(
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
                            style: Theme.of(context).textTheme.headline6,
                            /* style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ), */
                          ),
                          Text(
                            pel.diasSemana,
                            style: Theme.of(context).textTheme.subtitle2,
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
