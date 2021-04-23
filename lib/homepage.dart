import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/destination.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 3;

  Widget bodyFunction() {
    switch (_currentIndex) {
      case 0:
        return Container(color: Colors.red);
        break;
      case 1:
        return Container(color: Colors.blue);
        break;
      case 2:
        return Container(color: Colors.orange);
        break;
      case 3:
        return Container(color: Colors.green);
        break;
      case 4:
        return Container(color: Colors.lightBlue);
        break;
      default:
        return Container(color: Colors.white);
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
        unselectedItemColor: Color(0xFF455A64),
        currentIndex: _currentIndex,
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
