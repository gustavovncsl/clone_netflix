import 'dart:convert';

import 'package:clone_netflix/src/models/movie.dart';
import 'package:http/http.dart' as http;

Future<List<Map<String, dynamic>>> fetchMoviesAmazing() async {
  String apiMovies =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=b08d03e485967449e3ee8777025070fd&page=2';

  final response = await http.get(Uri.parse(apiMovies));

  return List<Map<String, dynamic>>.from(jsonDecode(response.body)['results']);
}

 getFetchedMoviesAmazing() async {
    List<MovieModel> moviesList = <MovieModel>[];

    List<Map<String, dynamic>> fecth = await fetchMoviesAmazing();

    moviesList = fecth.map((e) {
      return MovieModel.fromJson(e);
    }).toList();

    moviesList.forEach((element) {
      print(element.title);
    });

    return moviesList;
  }