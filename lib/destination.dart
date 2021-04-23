import 'package:flutter/material.dart';

class Destination {
  const Destination(this.title, this.icon);
  final String title;
  final IconData icon;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Statut', Icons.circle),
  Destination('Appels', Icons.phone),
  Destination('Camera', Icons.camera_enhance_rounded),
  Destination('Discussions', Icons.message_outlined),
  Destination('Réglages', Icons.settings),
];
