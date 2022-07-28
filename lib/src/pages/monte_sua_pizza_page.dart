import 'package:atividade_2_fiap/src/design_system/widgets/button_widget.dart';
import 'package:atividade_2_fiap/src/design_system/widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../design_system/colors.dart' as colors_globals;

class MonteSuaPizza extends StatelessWidget {
  const MonteSuaPizza({Key? key}) : super(key: key);

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
                'PIZZARIA\nMONTE SUA PIZZA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Impact',
                  fontSize: 20,
                  color: Colors.black,
                ),
              )
          ),
          Expanded(
            child:  ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: const [
                DropdownWidget('ESCOLHA O INGREDIENTE 1'),
                DropdownWidget('ESCOLHA O INGREDIENTE 2'),
                DropdownWidget('ESCOLHA O INGREDIENTE 3'),
                DropdownWidget('ESCOLHA O INGREDIENTE 4'),
                DropdownWidget('ESCOLHA O INGREDIENTE 5'),
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(bottom: 30)
          ),
          const ButtonWidget("CONCLUIR"),
          const Padding(
              padding: EdgeInsets.only(bottom: 30)),
        ],
      ),
    );
  }
}
