import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/users_page.dart';
import 'pages/contacto_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _paginaActual = 0;

  final List<Widget> _paginas = [
    const PaginaHome(),
    const PaginaUser(),
    const ContactoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation'),
          backgroundColor: const Color(0xFF000000),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _paginaActual = index;
                //print(_paginaActual);
              });
            },
            currentIndex: _paginaActual,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle), label: 'User'),
              BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Contact')
            ]),
      ),
    );
  }
}
