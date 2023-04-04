import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

class Movie {
  final String name;
  final String imageUrl;

  Movie({
    required this.name,
    required this.imageUrl,
  });
}

class MovieListItemWidget extends StatelessWidget {
  final Movie movie;

  const MovieListItemWidget({required this.movie});

  @override
  Widget build(BuildContext context) {
    final double itemWidth = getHorizontalSize(275);
    final double itemHeight = getVerticalSize(110);

    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: ColorConstant.gray,
            borderRadius: BorderRadius.circular(getHorizontalSize(15)),
          ),
          child: SizedBox(
            height: itemHeight,
            width: itemWidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getHorizontalSize(10)),
                  child: SizedBox(
                    height: getVerticalSize(95),
                    width: getHorizontalSize(73),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: NetworkImage(movie.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getHorizontalSize(10)),
                Expanded(
                  child: Container(
                    height:
                        itemHeight, // set height of container to match the parent SizedBox
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        movie.name,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanRegular20,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getHorizontalSize(10)),
              ],
            ),
          ),
        ),
        SizedBox(
            height: 10), // add a gap of 10 between MovieListItemWidget widgets
      ],
    );
  }
}
