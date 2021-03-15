import 'package:flutter/material.dart';

class PeladasForm extends StatefulWidget {
  final void Function(String, String) onSubmit;

  PeladasForm(this.onSubmit);

  @override
  _PeladasFormState createState() => _PeladasFormState();
}

class _PeladasFormState extends State<PeladasForm> {
  final descricaoController = TextEditingController();

  final diasSemanaController = TextEditingController();

  _submitForm() {
    final descricao = descricaoController.text;
    final diasSemana = diasSemanaController.text;

    if (descricao.isEmpty || diasSemana.isEmpty) {
      return;
    }

    widget.onSubmit(descricao, diasSemana);
  }

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
              keyboardType: TextInputType.text,
              onSubmitted: (_) => _submitForm(),
              decoration: InputDecoration(
                labelText: 'Descição',
              ),
            ),
            TextField(
              controller: diasSemanaController,
              onSubmitted: (_) => _submitForm(),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Dias semana',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: _submitForm,
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
