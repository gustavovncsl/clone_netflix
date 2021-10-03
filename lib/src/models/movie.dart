class MovieModel {
  final String? title;
  final String? overview;
  final String? posterPath;
  final String? backDropPath;
  final vote;
  final id;

  MovieModel(
      {this.title,
      this.overview,
      this.posterPath,
      this.backDropPath,
      this.vote,
      this.id});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        title: json['title'],
        overview: json['overview'],
        backDropPath: json['backdrop_path'],
        posterPath: json['poster_path'],
        vote: json['vote_average'],
        id: json['id']);
  }
}
