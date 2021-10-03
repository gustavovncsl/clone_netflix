import 'dart:ui';
import 'package:clone_netflix/src/api_request/api_movies_popular.dart';
import 'package:clone_netflix/src/screens/info_page_amazing.dart';
import 'package:clone_netflix/src/screens/info_page_popular.dart';
import 'package:clone_netflix/src/widgets/content_header.dart';
import 'package:clone_netflix/src/widgets/content_header.dart';
import 'package:flutter/material.dart';

import 'content_header.dart';

class popular_movies extends StatefulWidget {
  const popular_movies({Key? key}) : super(key: key);

  @override
  _popular_moviesState createState() => _popular_moviesState();
}

class _popular_moviesState extends State<popular_movies> {
  var future_poster;
  late int indexMovieDetail;

  @override
  void initState() {
    super.initState();
    future_poster = getFetchedMoviesPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
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
                          'Filmes Populares',
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
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
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
                                              info_page_detail(
                                                index: indexMovieDetail,
                                              )),
                                    );
                                    ;
                                  },
                                ),
                              ),
                            );
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
