import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

class Movie {
  final String name;
  final String imageUrl;
  final double rating;
  final int totalRatings;
  final int popularity;

  Movie({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.totalRatings,
    required this.popularity,
  });
}

class MovielistItemWidget extends StatefulWidget {
  final dynamic data;
  final Movie movie;

  MovielistItemWidget({required this.data, required this.movie});

  @override
  _MovielistItemWidgetState createState() => _MovielistItemWidgetState();
}

class _MovielistItemWidgetState extends State<MovielistItemWidget> {
  double _rating = 0.0;

  @override
  void initState() {
    super.initState();
    _rating = widget.movie.rating;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(110),
      width: getHorizontalSize(275),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(110),
              width: getHorizontalSize(284),
              decoration: BoxDecoration(
                color: ColorConstant.gray,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(15),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: widget.data['imagePath'],
                  height: getVerticalSize(94),
                  width: getHorizontalSize(73),
                  radius: BorderRadius.circular(
                    getHorizontalSize(10),
                  ),
                ),
                Padding(
                  padding: getPadding(left: 24, top: 31, bottom: 33),
                  child: Text(
                    widget.data['title'],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanBold25,
                  ),
                ),
                Padding(
                  padding: getPadding(left: 37, top: 14, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar,
                              height: getSize(27),
                              width: getSize(27),
                              margin: getMargin(top: 6, bottom: 4),
                            ),
                            Padding(
                              padding: getPadding(left: 6),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    _rating.toStringAsFixed(1),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanLight20,
                                  ),
                                  Padding(
                                    padding: getPadding(top: 1),
                                    child: Text(
                                      widget.data['ratingCount'].toString(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanLight10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 8),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgPopularity,
                              height: getVerticalSize(15),
                              width: getHorizontalSize(27),
                              margin: getMargin(top: 1, bottom: 1),
                            ),
                            Padding(
                              padding: getPadding(left: 6),
                              child: Text(
                                widget.data['popularity'].toString(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanLight15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
