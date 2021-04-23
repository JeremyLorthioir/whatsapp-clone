import 'package:flutter/material.dart';

class Destination {
  const Destination(this.title, this.icon);
  final String title;
  final IconData icon;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Statut', Icons.circle),
  Destination('Appels', Icons.phone),
  Destination('Camera', Icons.camera),
  Destination('Discussions', Icons.messenger_outline_outlined),
  Destination('Réglages', Icons.settings),
];
