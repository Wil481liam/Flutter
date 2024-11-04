import 'package:desafio/pages/LoginPage.dart';
import 'package:desafio/pages/catalogo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ElevatedButton(
              onPressed: () => {},
              child: Icon(
                FontAwesomeIcons.cat,
                size: 30,
                color: Colors.amber,
              )),
        ],
      ),
    );
  }
}

class BottomApp extends StatefulWidget {
  @override
  _BottomAppState createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const catalogo(),
    const Loginpage(),
    //   const catalogo(),
    //   const Loginpage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Atualiza o índice selecionado
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/catalogo');
    }
    if (index == 1) {
      Navigator.pushNamed(context, '/LoginPage');
    }
    if (index == 2) {
      Navigator.pushNamed(context, '/catalogo');
    }
    if (index == 3) {
      Navigator.pushNamed(context, '/LoginPage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: _onItemTapped[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.dog),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cartShopping),
            label: 'Pets',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.paw),
            label: 'Família',
          ),
        ],
        currentIndex: _selectedIndex, // Use o nome correto da variável
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 17,
        unselectedFontSize: 15,
        iconSize: 18,
        onTap: _onItemTapped, // Chama o método ao tocar em um item
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
