// Requisição Api
import 'package:clone_netflix/src/models/movie.dart';
import 'package:clone_netflix/src/models/movie_request.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<MovieRequest> fetchMovie() async {
  // Url da Api
  String routeApi =
      'https://api.themoviedb.org/3/discover/movie?api_key=b08d03e485967449e3ee8777025070fd&page';

  // Variavel e função que pega api
  final response = await http.get(Uri.parse(routeApi));
  // Print que mostra que a api esta retornando com sucesso no console
  print(response.body);

  if (response.statusCode == 200) {
    return MovieRequest.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Falha ao carregar o filme');
  }
}
