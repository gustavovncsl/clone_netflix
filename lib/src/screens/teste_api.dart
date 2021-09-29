// Arquivo/Código para fazer os testes na api
import 'package:clone_netflix/src/models/movie.dart';
import 'package:clone_netflix/src/models/movie_request.dart';
import 'package:clone_netflix/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class testeApi extends StatefulWidget {
  const testeApi({Key? key}) : super(key: key);

  @override
  _testeApiState createState() => _testeApiState();
}

class _testeApiState extends State<testeApi> {
  late Future<MovieRequest> futureMovie;

  @override
  void initState() {
    super.initState();
    futureMovie = fetchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieRequest>(
      future: futureMovie,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // Print que mostra o que foi pego da api em results
          print(snapshot.data!.results);
          return Text("api funcionando",
            style: TextStyle(color: Colors.white),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
