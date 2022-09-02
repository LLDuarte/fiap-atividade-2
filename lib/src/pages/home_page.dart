import 'package:atividade_2_fiap/src/basic_structure.dart';
import 'package:atividade_2_fiap/src/design_system/widgets/app_bar_widget.dart';
import 'package:atividade_2_fiap/src/pages/monte_sua_pizza_page.dart';
import 'package:flutter/material.dart';
import '../design_system/colors.dart' as colors_globals;

class HomePage extends StatelessWidget {
  final VoidCallback monteSuaPizza;
  final VoidCallback cardapio;

  HomePage({Key? key, required this.monteSuaPizza, required this.cardapio}) : super(key: key);

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
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: const Text(
              'PIZZARIA',
              style: TextStyle(
                  fontFamily: 'Impact', fontSize: 20, color: Colors.black),
            )
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(22, 0, 22, 70),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset('lib/src/design_system/assets/images/home_1.jpg'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () { monteSuaPizza(); },
                      child: Column(
                        children: const [
                          Text(
                            'MONTE SUA \nPIZZA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Inter',
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                          ),
                          Text(
                            'O processo é simples, \nbasta clicar aqui, adicionar os \n ingredientes e fechar o pedido!',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 8.0, fontFamily: 'Inter'),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'lib/src/design_system/assets/images/home_2.jpg',
                        width: 260.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'lib/src/design_system/assets/images/home_3.jpg',
                        width: 160.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BasicStructure(page: 2)),
                        );
                      },
                      child: Column(
                        children: [
                          const Text(
                            'CARDÁPIO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Inter',
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () { cardapio(); },
                            child: const Text(
                              'Clique aqui e confira, \nnosso cardápio,com \nalgumas sugestões \nde pizzas para você!',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 10.0, fontFamily: 'Inter'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
