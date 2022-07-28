import 'package:atividade_2_fiap/src/design_system/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import '../../design_system/colors.dart' as colors_globals;

class CardCardapioWidget extends StatelessWidget {
  final String header;
  final String description;
  final String preco;
  final String? url;

  const CardCardapioWidget(this.header, this.description, this.preco, this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String final_url = 'lib/src/design_system/assets/images/cardapio_1.jpg';

    if(url != null) final_url = url.toString();

    return Container(
      color: Color(colors_globals.background_gray_color),
      margin: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 15.0),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Image.asset(final_url),
          const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0)
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              header,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              description,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0)
          ),
          ButtonWidget("Adicionar " + preco)
        ],
      ),
    );
  }
}