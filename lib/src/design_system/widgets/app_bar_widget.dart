import 'package:flutter/material.dart';
import '../colors.dart' as colors_globals;

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        color: Colors.transparent,
        child: Container(
            child: const Text(
              'PIZZARIA',
              style: TextStyle(
                  fontFamily: 'Impact',
                  fontSize: 20,
                  color: Colors.black
              ),
            )
        ),
    )
    );
  }
}
