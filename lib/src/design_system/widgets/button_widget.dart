import 'package:flutter/material.dart';
import '../colors.dart' as colors_globals;

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback function;

  const ButtonWidget({required this.label, required this.function, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color: Color(colors_globals.green_button),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(50.0, 16.0, 50.0, 16.0),
              primary: Colors.black,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: function,
            child: Text(
              label,
              style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
