import '../../core/network/constants/endpoints.dart';
import '../../core/network/dio_client.dart';

class MovieCollectionApi {
  final DioClient _dioClient;

  MovieCollectionApi(this._dioClient);

  Future fetchMovieCollectionsApiRequest() async {
    try {
      final response = await _dioClient.get(Endpoints.movieCollections);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
