import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/models/movie_list_model.dart';
import 'package:movie_mixer/services/providers.dart';
import 'package:movie_mixer/widgets/custom_icon_button.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  int _selectedIndex = 0;
  String _roomID = '1';
  late ApiProvider provider = ApiProvider();
  late Future<MovieListModel?> futureMovieList;

  @override
  void initState() {
    super.initState();
    futureMovieList = provider.fetchFinalMovieList(_roomID);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray,
            body: Container(
                width: double.maxFinite,
                child: FutureBuilder<MovieListModel?>(
                  future: provider.fetchFinalMovieList(_roomID),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final movieList = snapshot.data!;
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              'https://image.tmdb.org/t/p/w500${movieList.movies![_selectedIndex].posterPath}',
                              width: 360,
                              height: 376,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 5, right: 24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              movieList.movies![_selectedIndex]
                                                  .title!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanMedium35),
                                          Row(
                                            children: [
                                              Text(
                                                  movieList
                                                      .movies![_selectedIndex]
                                                      .releaseDate!,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanLight15),
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgStar,
                                                              height:
                                                                  getSize(27),
                                                              width:
                                                                  getSize(27),
                                                              margin: getMargin(
                                                                  top: 6,
                                                                  bottom: 4)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 6),
                                                              child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        movieList
                                                                            .movies![
                                                                                _selectedIndex]
                                                                            .voteAvredge!,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRomanLight20),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            movieList.movies![_selectedIndex].voteCount!,
                                                                            overflow: TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRomanLight10))
                                                                  ]))
                                                        ])),
                                                Padding(
                                                    padding: getPadding(top: 8),
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPopularity,
                                                          height:
                                                              getVerticalSize(
                                                                  15),
                                                          width:
                                                              getHorizontalSize(
                                                                  27),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 1)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 6),
                                                          child: Text(
                                                              movieList
                                                                  .movies![
                                                                      _selectedIndex]
                                                                  .popularity!,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRomanLight15))
                                                    ])),
                                              ]))
                                    ])),
                            Container(
                                width: getHorizontalSize(312),
                                margin: getMargin(left: 24, top: 21, right: 24),
                                child: Text(
                                    movieList.movies![_selectedIndex].overview!,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular14)),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 125, right: 24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomIconButton(
                                          height: 64,
                                          width: 64,
                                          onTap: () {
                                            onTapBtnDisagreebutton(context);
                                          },
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgThumbsDown)),
                                      CustomIconButton(
                                          height: 64,
                                          width: 64,
                                          variant: IconButtonVariant
                                              .OutlineBlack9003f_1,
                                          onTap: () {
                                            onTapBtnThumbsup(context);
                                          },
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgThumbsup))
                                    ])),
                            Padding(
                              padding: getPadding(top: 13, bottom: 5),
                              child: Text("X/X",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRobotoRomanRegular20WhiteA70001),
                            )
                          ]);
                    } else if (snapshot.hasError) {
                      throw Exception('Error');
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ))));
  }
}

onTapBtnDisagreebutton(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
}

onTapBtnThumbsup(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
}
