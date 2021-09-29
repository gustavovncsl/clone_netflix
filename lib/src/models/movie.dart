// Nossa class model pra pegar informações da api

import 'dart:convert';

class Movie {
  final String title;
  final String overview;
  final String backdropPath;
  final String posterPath;

  Movie(
      {required this.title,
      required this.overview,
      required this.backdropPath,
      required this.posterPath});

  // factory Movie.fromJosn(String str) => Movie.fromMap(jsonDecode(str));

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
    );
  }
}
