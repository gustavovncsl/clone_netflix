// Esse código representa o primeiro conteudo depois da nossa barra de navegação
import 'package:clone_netflix/src/screens/info_movie_principal.dart';
import 'package:clone_netflix/src/screens/info_page_amazing.dart';
import 'package:clone_netflix/src/widgets/popular_movies.dart';
import 'package:flutter/material.dart';

class contentHeader extends StatelessWidget {
  const contentHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    height: 580.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/banner-inicio.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 585,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.transparent],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                  ),
                  Positioned(
                    top: 380,
                    width: 330,
                    left: 35,
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/serie-logo.png',
                            width: 100,
                          ),
                          Image.asset(
                            'assets/images/logo-filme-inicio.png',
                            width: 300,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Suspense no ar',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                                Icon(Icons.circle, size: 5, color: Colors.red),
                                Text('Coreano',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                                Icon(Icons.circle, size: 5, color: Colors.red),
                                Text('Séries Dramáticas',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Minha Lista',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          onPrimary: Colors.red),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  info_movie_principal()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0, vertical: 5.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.play_arrow,
                                              color: Colors.black,
                                            ),
                                            Text(
                                              'Assistir',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.0),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Saiba Mais',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
