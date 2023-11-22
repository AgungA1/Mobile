import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final double kelvinResult;
  final double reamurResult;

  ResultWidget({required this.kelvinResult, required this.reamurResult});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Text('Suhu dalam Kelvin:', style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),
                  Text('$kelvinResult', style: TextStyle(fontSize: 40)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Text('Suhu dalam Reamur:', style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),
                  Text('$reamurResult', style: TextStyle(fontSize: 40)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
