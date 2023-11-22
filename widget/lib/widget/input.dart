import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function onChanged;

  InputWidget({required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onChanged: (value) {
        onChanged();
      },
      decoration: InputDecoration(
        labelText: 'Masukkan Suhu (Celsius)',
      ),
    );
  }
}
