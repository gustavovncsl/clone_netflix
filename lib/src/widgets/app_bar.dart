import 'package:clone_netflix/src/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class app_bar extends StatelessWidget {
  const app_bar({Key? key}) : super(key: key);
  // Código que contém a barra de navegação
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 45.0,
                  ),
                  // Cast e icon de perfil
                  menu_widget()
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Séries',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Filmes',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Categorias ▼',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



// 
//             