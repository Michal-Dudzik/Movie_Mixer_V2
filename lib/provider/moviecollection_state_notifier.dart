import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_mixer/data/models/moviecollection_model.dart';
import 'package:movie_mixer/provider/moviecollection_provider.dart';

class MovieCollectionsNotifier
    extends StateNotifier<List<MovieCollectionModel>> {
  // Fetching all products whenever anyone starts listning.
  // Passing Ref, in order to access other providers inside this.
  MovieCollectionsNotifier({required this.ref}) : super([]) {
    fetchMovieCollections(ref: ref);
  }
  final Ref ref;

  Future fetchMovieCollections({required Ref ref}) async {
    await ref
        .read(movieCollectionRepositoryProvider)
        .fetchMovieCollectionsRequested()
        .then((value) {
      // Setting current `state` to the fetched list of products.
      state = value;
      // Setting isLoading to `false`.
      ref.read(isLoadingMovieCollectionsProvider.notifier).state = false;
    });
  }
}
