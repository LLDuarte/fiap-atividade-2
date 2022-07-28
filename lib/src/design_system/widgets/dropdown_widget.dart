import 'package:flutter/material.dart';
import '../../design_system/colors.dart' as colors_globals;

class DropdownWidget extends StatefulWidget {
  final String label;

  const DropdownWidget(this.label, {Key? key}) : super(key: key);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedValue = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(15.0),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(colors_globals.background_gray_color)
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Colors.white,
              filled: true
            ),
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: dropdownItems
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Selecione..."), value: ""),
      DropdownMenuItem(child: Text("Frango"), value: "Frango"),
      DropdownMenuItem(child: Text("Catupiry"), value: "Catupiry"),
      DropdownMenuItem(child: Text("Queijo Mussarela"), value: "Queijo Mussarela"),
      DropdownMenuItem(child: Text("Tomate"), value: "Tomate"),
      DropdownMenuItem(child: Text("Calabresa"), value: "Calabresa"),
      DropdownMenuItem(child: Text("Presunto"), value: "Presunto"),
      DropdownMenuItem(child: Text("Orégano"), value: "Orégano"),
    ];
    return menuItems;
  }
}
