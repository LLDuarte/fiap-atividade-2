import 'package:atividade_2_fiap/src/design_system/widgets/button_widget.dart';
import 'package:atividade_2_fiap/src/design_system/widgets/card_cardapio_widget.dart';
import 'package:atividade_2_fiap/src/design_system/widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';
import '../design_system/colors.dart' as colors_globals;

class Cardapio extends StatelessWidget {
  final VoidCallback carrinho;

  const Cardapio({Key? key, required this.carrinho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(colors_globals.first_color_background),
            Colors.white,
          ],
        ),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: const Text(
                'PIZZARIA\nCARDÁPIO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Impact',
                  fontSize: 20,
                  color: Colors.black,
                ),
              )
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
              children: [
                CardCardapioWidget("PROMOÇÃO 1", "1 PIZZA E 1 COCA", "R\$ 80.00", 'lib/src/design_system/assets/images/cardapio_1.jpg', carrinho: () {carrinho();}),
                CardCardapioWidget("PROMOÇÃO 2", "1 PIZZA E 1 COCA", "R\$ 90.00", 'lib/src/design_system/assets/images/cardapio_2.png', carrinho: () {carrinho();}),
                CardCardapioWidget("PROMOÇÃO 3", "1 PIZZA E 1 COCA", "R\$ 50.99", 'lib/src/design_system/assets/images/cardapio_3.jpg', carrinho: () {carrinho();}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
