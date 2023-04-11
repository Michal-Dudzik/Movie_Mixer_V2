import 'package:movie_mixer/models/movie_model.dart';

class MovieListModel {
  String? id;
  List<MovieModel>? movieModel;

  MovieListModel({this.id, this.movieModel});

  MovieListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['movies'] != null) {
      movieModel = <MovieModel>[];
      json['movies'].forEach((v) {
        movieModel!.add(new MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.movieModel != null) {
      data['movies'] = this.movieModel!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
