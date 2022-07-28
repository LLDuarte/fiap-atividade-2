import 'package:atividade_2_fiap/src/pages/cardapio_page.dart';
import 'package:atividade_2_fiap/src/pages/carrinho_page.dart';
import 'package:atividade_2_fiap/src/pages/home_page.dart';
import 'package:atividade_2_fiap/src/pages/monte_sua_pizza_page.dart';
import 'package:flutter/material.dart';

class BasicStructure extends StatefulWidget {
  final int? page;
  const BasicStructure({Key? key, this.page}) : super(key: key);

  @override
  _BasicStructureState createState() => _BasicStructureState();
}

class _BasicStructureState extends State<BasicStructure> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    MonteSuaPizza(),
    Cardapio(),
    Carrinho(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(widget.page != null) _selectedIndex = widget.page!;

    Widget retorno = Scaffold(
      // appBar: const AppBarWidget(),
        extendBody: false,
        body: Center(
          child:  _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza_outlined),
              label: 'Monte a pizza',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu_outlined),
              label: 'Cardápio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Carrinho',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        )
    );

    _selectedIndex = 0;

    return retorno;
  }
}

