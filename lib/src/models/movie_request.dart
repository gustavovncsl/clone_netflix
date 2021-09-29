// Nossa class model pra pegar informações da api

import 'package:clone_netflix/src/models/movie.dart';



class MovieRequest {
  final List results;

  MovieRequest({
    required this.results,
  });

  factory MovieRequest.fromJson(Map json) {
    return MovieRequest(
      results: json['results']
      );
  }
}
