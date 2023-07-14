import 'package:flutter/material.dart';
import 'package:flutter_final_app/prasentation/screen/home/menuawal/futured_screeen.dart';

class HomeAwal extends StatefulWidget {
  const HomeAwal({super.key});

  @override
  State<HomeAwal> createState() => _HomeAwalState();
}

class _HomeAwalState extends State<HomeAwal> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FutureScreen(),
    FutureScreen(),
    FutureScreen(),
    FutureScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}
