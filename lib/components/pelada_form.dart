import 'package:flutter/material.dart';

class PeladasForm extends StatelessWidget {
  final descricaoController = TextEditingController();
  final diasSemanaController = TextEditingController();

  final void Function(String, String) onSubmit;

  PeladasForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: descricaoController,
              decoration: InputDecoration(
                labelText: 'Descição',
              ),
            ),
            TextField(
              controller: diasSemanaController,
              decoration: InputDecoration(
                labelText: 'Dias semana',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    final descricao = descricaoController.text;
                    final diasSemana = diasSemanaController.text;
                    onSubmit(descricao, diasSemana);
                  },
                  child: Text(
                    'Nova Pelada',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
