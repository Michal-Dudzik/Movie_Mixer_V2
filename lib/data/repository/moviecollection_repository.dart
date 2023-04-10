import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_mixer/data/api/moviecollection_api.dart';
import 'package:movie_mixer/data/models/moviecollection_model.dart';

class MovieCollectionRepository {
  final MovieCollectionApi _moviecollectionApi;

  MovieCollectionRepository(this._moviecollectionApi);

  Future<List<MovieCollectionModel>> fetchMovieCollectionsRequested() async {
    try {
      final res = await _moviecollectionApi.fetchMovieCollectionsApiRequest();
      final moviecollectionModel =
          (res as List).map((e) => MovieCollectionModel.fromJson(e)).toList();
      return moviecollectionModel;
    } on DioError catch (e) {
      final errorMessage = e;
      log(errorMessage.toString());
      rethrow;
    }
    //TODO: fix pls
  }
}
