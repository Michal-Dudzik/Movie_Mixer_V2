import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_mixer/data/models/moviecollection_model.dart';
import 'package:movie_mixer/data/repository/moviecollection_repository.dart';
import 'package:movie_mixer/provider/moviecollection_state_notifier.dart';

import '../core/shared_provider/shared_providers.dart';
import '../data/api/moviecollection_api.dart';

final movieCollectionApiProvider = Provider<MovieCollectionApi>((ref) {
  return MovieCollectionApi(ref.read(dioClientProvider));
});

final movieCollectionRepositoryProvider =
    Provider<MovieCollectionRepository>((ref) {
  return MovieCollectionRepository(ref.read(movieCollectionApiProvider));
});

final movieCollectionsProvider =
    StateNotifierProvider<MovieCollectionsNotifier, List<MovieCollectionModel>>(
        (ref) {
  return MovieCollectionsNotifier(ref: ref);
});

final isLoadingMovieCollectionsProvider = StateProvider<bool>((ref) {
  return true;
});
