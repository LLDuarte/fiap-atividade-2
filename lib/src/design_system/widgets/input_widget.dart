import 'package:flutter/material.dart';
import '../colors.dart' as colors_globals;

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    String monthName = "";
    switch(now.month) {
      case 1 :
        monthName = "JANEIRO - " + now.year.toString();
        break;

      case 2 :
        monthName = "FEVEREIRO - " + now.year.toString();
        break;

      case 3 :
        monthName = "MARÇO - " + now.year.toString();
        break;

      case 4 :
        monthName = "ABRIL - " + now.year.toString();
        break;

      case 5 :
        monthName = "MAIO - " + now.year.toString();;
        break;

      case 6 :
        monthName = "JUNHO - " + now.year.toString();;
        break;

      case 7 :
        monthName = "JULHO - " + now.year.toString();;
        break;

      case 8 :
        monthName = "AGOSTO - " + now.year.toString();;
        break;

      case 9 :
        monthName = "SETEMBRO - " + now.year.toString();;
        break;

      case 10 :
        monthName = "OUTUBRO - " + now.year.toString();;
        break;

      case 11 :
        monthName = "NOVEMBRO - " + now.year.toString();;
        break;

      case 12 :
        monthName = "DEZEMBRO - " + now.year.toString();;
        break;
    }

    return AppBar(
      elevation: 0,
      leading: Icon(
          Icons.settings,
          color: Color(colors_globals.cream)),
      backgroundColor: Color(colors_globals.blue),
      actions: <Widget>[
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(monthName,
                  style: TextStyle(
                      color: Color(colors_globals.cream),
                      fontSize: 12.0,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700
                  ),
                ),
                Icon(
                  Icons.expand_more,
                  color: Color(colors_globals.cream),
                ),
              ],
            )
        ),
      ],
    );
  }
}
