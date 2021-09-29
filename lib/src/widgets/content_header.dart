// Esse código representa o primeiro conteudo depois da nossa barra de navegação
import 'package:flutter/material.dart';

class contentHeader extends StatelessWidget {
  const contentHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          height: 600.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/banner-inicio.jpg'),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 630.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
            )
          ),
        )
      ],
    );
  }
}
