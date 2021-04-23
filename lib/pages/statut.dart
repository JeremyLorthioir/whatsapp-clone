import 'package:flutter/material.dart';

class Statut extends StatefulWidget {
  @override
  _StatutState createState() => _StatutState();
}

class _StatutState extends State<Statut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Confidentialité',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Statut',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Rechercher',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
