import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/endpoints.dart';
import '../models/movie_collection_model.dart';

class ApiProvider {
  Future<List<MovieCollectionModel>> fetchCollection() async {
    final response = await http.get(Uri.parse(Endpoints.movieCollections));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List<dynamic>;
      return jsonList
          .map((json) => MovieCollectionModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load collections');
    }
  }
}
