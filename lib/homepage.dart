import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/destination.dart';
import 'package:whatsapp_clone/pages/statut.dart';
import 'package:whatsapp_clone/pages/phone.dart';
import 'package:whatsapp_clone/pages/camera.dart';
import 'package:whatsapp_clone/pages/message.dart';
import 'package:whatsapp_clone/pages/setting.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 3;

  Widget bodyFunction() {
    switch (_currentIndex) {
      case 0:
        return Statut();
        break;
      case 1:
        return Phone();
        break;
      case 2:
        return Camera();
        break;
      case 3:
        return Message();
        break;
      case 4:
        return Setting();
        break;
      default:
        return Message();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyFunction(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF34B7F1),
        unselectedItemColor: Color(0xFFFFFFFF),
        currentIndex: _currentIndex,
        backgroundColor: Color(0xFF455A64),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestinations.map(
          (Destination destination) {
            return BottomNavigationBarItem(
              icon: Icon(destination.icon),
              title: Text(destination.title),
            );
          },
        ).toList(),
      ),
    );
  }
}
