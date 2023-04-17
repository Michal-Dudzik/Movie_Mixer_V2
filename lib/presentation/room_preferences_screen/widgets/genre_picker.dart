import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/models/genre_model.dart';
import 'package:movie_mixer/services/providers.dart';

// final List<GenreModel> allGenres = [
//   GenreModel(tmdbId: 28, name: 'Action'),
//   GenreModel(tmdbId: 35, name: 'Comedy'),
//   GenreModel(tmdbId: 18, name: 'Drama'),
//   GenreModel(tmdbId: 27, name: 'Horror'),
//   GenreModel(tmdbId: 10749, name: 'Romance'),
//   GenreModel(tmdbId: 878, name: 'Sci-Fi'),
// ];

class GenrePicker extends StatefulWidget {
  final Function(List<GenreModel>) onGenresChanged;

  GenrePicker({required this.onGenresChanged});

  @override
  _GenrePickerState createState() => _GenrePickerState();
}

class _GenrePickerState extends State<GenrePicker> {
  List<GenreModel> _selectedGenres = [];

  Future<List<GenreModel>> _showGenreModal() async {
    // List of available genres
    final List<GenreModel> allGenres = await ApiProvider().fetchGenres();
    // Set of selected genres
    final Set<GenreModel> selectedGenres = Set();

    // Show the genre selection dialog
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(43))),
              title: Text('Select Genres'),
              content: SingleChildScrollView(
                child: Column(
                  children: allGenres
                      .map((genre) => CheckboxListTile(
                            title: Text(genre.name!),
                            value: selectedGenres.contains(genre),
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                selectedGenres.add(genre);
                              } else {
                                selectedGenres.remove(genre);
                              }
                              setState(() {});
                            },
                          ))
                      .toList(),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, selectedGenres.toList());
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _handleGenresChanged(List<GenreModel> genres) {
    setState(() {
      _selectedGenres = genres;
    });
    widget.onGenresChanged(genres);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(19, 11, 19, 11),
          decoration: BoxDecoration(
            color: ColorConstant.ghostWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Preferred genres",
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular20),
              IconButton(
                  icon: const Icon(Icons.add_circle_outline_rounded),
                  color: ColorConstant.cyan,
                  iconSize: 40,
                  onPressed: () async {
                    final selectedGenres = await _showGenreModal();
                    _handleGenresChanged(selectedGenres);
                  }),
            ],
          ),
        ),
        if (_selectedGenres.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _selectedGenres
                  .map((genre) => GestureDetector(
                        onTap: () {
                          _handleGenresChanged(_selectedGenres
                              .where((g) => g.dbId != genre.dbId)
                              .toList());
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                            color: ColorConstant.ghostWhite,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            genre.name!,
                            style: AppStyle.txtRobotoRomanRegular12Black900,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
      ],
    );
  }
}
