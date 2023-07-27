import 'package:flutter/material.dart';

class pop_up_al_comp extends StatefulWidget {
  @override
  _pop_up_al_compState createState() => _pop_up_al_compState();
}

class _pop_up_al_compState extends State<pop_up_al_comp> {
  TextEditingController _dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Ingresar la porcion del alimento'),
      content: TextField(
        controller: _dataController,
        decoration: InputDecoration(labelText: 'Porcion'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop(); // Cerrar el cuadro de diálogo sin guardar datos
          },
          child: Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            String enteredData = _dataController.text;
            Navigator.of(context).pop(
                enteredData); // Devolver los datos ingresados al cerrar el cuadro de diálogo
          },
          child: Text('Guardar'),
        ),
      ],
    );
  }
}
