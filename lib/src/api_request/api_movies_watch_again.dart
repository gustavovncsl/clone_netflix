import 'dart:convert';

import 'package:clone_netflix/src/models/movie.dart';
import 'package:http/http.dart' as http;

Future<List<Map<String, dynamic>>> fetchMoviesWatchAgain() async {
  String apiMovies =
      'https://api.themoviedb.org/3/discover/movie?api_key=b08d03e485967449e3ee8777025070fd&page=4&language=pt-BR';

  final response = await http.get(Uri.parse(apiMovies));

  return List<Map<String, dynamic>>.from(jsonDecode(response.body)['results']);
}

 getFetchedMoviesWatchAgain() async {
    List<MovieModel> moviesList = <MovieModel>[];

    List<Map<String, dynamic>> fecth = await fetchMoviesWatchAgain();

    moviesList = fecth.map((e) {
      return MovieModel.fromJson(e);
    }).toList();

    moviesList.forEach((element) {
      print(element.title);
    });

    return moviesList;
  }