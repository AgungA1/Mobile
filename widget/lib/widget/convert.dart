import 'package:flutter/material.dart';

class ConvertButton extends StatelessWidget {
  final Function onPressed;

  ConvertButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Text('Konversi Suhu'),
      ),
    );
  }
}