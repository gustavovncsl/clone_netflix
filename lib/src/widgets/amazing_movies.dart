import 'dart:ui';
import 'package:clone_netflix/src/api_request/api_movies_amazing.dart';
import 'package:clone_netflix/src/screens/info_page_amazing.dart';
import 'package:flutter/material.dart';

import 'content_header.dart';

class amazing_movies extends StatefulWidget {
  const amazing_movies({Key? key}) : super(key: key);

  @override
  _amazing_moviesState createState() => _amazing_moviesState();
}

class _amazing_moviesState extends State<amazing_movies> {
  var future_poster;
  late int indexMovieDetail;

  @override
  void initState() {
    super.initState();
    future_poster = getFetchedMoviesAmazing();
  }

  indexMovieTop10(a, b) {
    b = 1;
    var soma = a + b;
    return soma.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          child: FutureBuilder(
              future: future_poster,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: Container(
                    child: CircularProgressIndicator(),
                  ));
                }
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Top 10 Hoje',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Stack(children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left:40, top: 20, bottom: 20),
                                  child: InkWell(
                                    child: Container(
                                        child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.network(
                                          'https://www.themoviedb.org/t/p/original${snapshot.data[index].posterPath}',
                                          fit: BoxFit.cover),
                                    )),
                                    onTap: () {
                                      setState(() {
                                        indexMovieDetail = index;
                                      });
                                      Navigator.push(
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
                              ),
                              Positioned(
                                left: 10,
                                top: 110,
                                child: Container(
                                    child: Stack(
                                  children: <Widget>[
                                    // Stroked text as border.
                                    Text(
                                      indexMovieTop10(index, 1),
                                      style: TextStyle(
                                        fontSize: 150,
                                        fontFamily: 'Netflix',
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 10
                                          ..color = Colors.white,
                                      ),
                                    ),
                                    // Solid text as fill.
                                    Text(
                                      indexMovieTop10(index, 1),
                                      style: TextStyle(
                                        fontSize: 150,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )),
                              )
                            ]);
                          }),
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
