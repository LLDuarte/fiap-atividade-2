import 'package:atividade_2_fiap/src/design_system/widgets/button_widget.dart';
import 'package:atividade_2_fiap/src/design_system/widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';
import '../design_system/colors.dart' as colors_globals;

class Carrinho extends StatelessWidget {
  const Carrinho({Key? key}) : super(key: key);

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
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: const Text(
                'PIZZARIA\nSEU CARRINHO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Impact',
                  fontSize: 20,
                  color: Colors.black,
                ),
              )),
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height - 270.0,
              //maximum height set to 100% of vertical height

              maxWidth: MediaQuery.of(context).size.width,
              //maximum width set to 100% of width
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Color(colors_globals.background_gray_color),
            ),
            margin: const EdgeInsets.all(15.0),
          ),
          ButtonWidget(label: "CONCLUIR", function: () {}),
        ],
      ),
    );
  }
}
