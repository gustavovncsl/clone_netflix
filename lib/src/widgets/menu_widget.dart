// widget do menu, cast e perfil

import 'package:flutter/material.dart';

class menu_widget extends StatelessWidget {
  const menu_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Icon(
              Icons.cast_rounded,
              size: 32.0,
              color: Colors.white,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Image(
            image: AssetImage('assets/images/perfil-icon.png'),
            width: 30.0,
          ),
        ),
      ],
    );
  }
}
