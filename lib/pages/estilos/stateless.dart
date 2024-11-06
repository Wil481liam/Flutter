import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:desafio/pages/estilos/bdLocal.dart';

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
  void _onItemTapped(int index) {
    Provider.of<bdLocal>(context, listen: false)
        .setIndex(index); // Atualiza o índice selecionado
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/catalogo');
        break;

      case 1:
        Navigator.pushReplacementNamed(context, '/catalogo');
        break;

      case 2:
        Navigator.pushReplacementNamed(context, '/catalogo');
        break;

      case 3:
        Navigator.pushReplacementNamed(context, '/catalogo');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<bdLocal>(context);

    return BottomNavigationBar(
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

      currentIndex: provider.index,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 17,
      unselectedFontSize: 15,
      iconSize: 18,
      onTap: _onItemTapped, // Chama o método ao tocar em um item
      type: BottomNavigationBarType.fixed,
    );
  }
}
