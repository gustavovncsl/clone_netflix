// Página de informações dos filmes, series...

import 'package:clone_netflix/src/api_request/api_movies_popular.dart';
import 'package:clone_netflix/src/api_request/api_movies_amazing.dart';
import 'package:clone_netflix/src/models/movie.dart';
import 'package:clone_netflix/src/widgets/app_bar.dart';
import 'package:clone_netflix/src/widgets/menu_widget.dart';
import 'package:clone_netflix/src/widgets/popular_movies.dart';
import 'package:flutter/material.dart';

class info_page_detail_amazing extends StatefulWidget {
  int index;

  info_page_detail_amazing({Key? key, required this.index}) : super(key: key);
  @override
  _info_page_detail_amazingState createState() => _info_page_detail_amazingState();
}

class _info_page_detail_amazingState extends State<info_page_detail_amazing> {
  var detail_movie;
  late int indexMovieDetail;

  @override
  void initState() {
    super.initState();
    detail_movie = getFetchedMoviesAmazing();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: menu_widget(),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: FutureBuilder(
              future: detail_movie,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: Container(
                    child: CircularProgressIndicator(),
                  ));
                }
                return Column(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                          'https://image.tmdb.org/t/p/original${snapshot.data[widget.index].backDropPath}',
                          fit: BoxFit.cover),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data[widget.index].title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Text(
                                      snapshot.data[widget.index].vote
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Text(
                                      'Avaliação',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Icon(
                                      Icons.hd,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            'Assistir',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          )
                                        ],
                                      )),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.grey.shade900),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Icon(
                                              Icons.download,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Baixar',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              child: Text(
                                snapshot.data[widget.index].overview,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                          ),
                                          Text(
                                            'Minha lista',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(11.0),
                                            child: Icon(
                                              Icons.thumb_up_alt_outlined,
                                              color: Colors.white,
                                              size: 35,
                                            ),
                                          ),
                                          Text(
                                            'Classifique',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(11.0),
                                            child: Icon(
                                              Icons.share_outlined,
                                              color: Colors.white,
                                              size: 35,
                                            ),
                                          ),
                                          Text(
                                            'Compartilhe',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Títulos Semelhantes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.5),
                                        ),
                                      ),
                                      Container(
                                        height: 250,
                                        child: FutureBuilder(
                                            future: detail_movie,
                                            builder: (context,
                                                AsyncSnapshot snapshot) {
                                              if (snapshot.connectionState ==
                                                  ConnectionState.waiting) {
                                                return Center(
                                                    child: Container(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ));
                                              }
                                              return Column(
                                                children: [
                                                  Expanded(
                                                    child: ListView.builder(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount: snapshot
                                                            .data.length,
                                                        itemBuilder:
                                                            (context, item) {
                                                          return Container(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      10.0),
                                                              child: InkWell(
                                                                child: Container(
                                                                    child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  child: Image.network(
                                                                      'https://www.themoviedb.org/t/p/original${snapshot.data[item].posterPath}',
                                                                      fit: BoxFit
                                                                          .cover),
                                                                )),
                                                                onTap: () {
                                                                  setState(() {
                                                                    indexMovieDetail =
                                                                        item;
                                                                  });
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: (context) =>
                                                                            info_page_detail_amazing(
                                                                              index: indexMovieDetail,
                                                                            )),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                  ),
                                                ],
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
