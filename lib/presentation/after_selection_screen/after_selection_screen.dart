import '../after_selection_screen/widgets/movielist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

final List<Movie> movies = [
  Movie(
    name: 'Shrek',
    imageUrl: 'https://via.placeholder.com/150',
    rating: 5.2,
    totalRatings: 133000,
    popularity: 621,
  ),
  Movie(
    name: 'The Lion King',
    imageUrl: 'https://via.placeholder.com/150',
    rating: 6.9,
    totalRatings: 243000,
    popularity: 912,
  ),
  Movie(
    name: 'Finding Nemo',
    imageUrl: 'https://via.placeholder.com/150',
    rating: 8.1,
    totalRatings: 543000,
    popularity: 1023,
  ),
  Movie(
    name: 'Toy Story',
    imageUrl: 'https://via.placeholder.com/150',
    rating: 7.9,
    totalRatings: 312000,
    popularity: 735,
  ),
];

class AfterSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.gray,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.gray,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPagebackground),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 13, top: 60, right: 13, bottom: 60),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(660),
                              width: getHorizontalSize(334),
                              margin: getMargin(top: 20),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 24,
                                                top: 1,
                                                right: 24,
                                                bottom: 1),
                                            decoration: AppDecoration.purple
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder43),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 20),
                                                      child: Text(
                                                          "People have spoken",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanBold20)),
                                                  Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 10,
                                                        right: 5),
                                                    child: ListView.builder(
                                                      itemCount: movies.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return MovielistItemWidget(
                                                          movie: movies[index],
                                                          data: null,
                                                        );
                                                      },
                                                    ),
                                                  )
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 29, top: 619, right: 28),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  40),
                                                          text: "Try Again",
                                                          margin: getMargin(
                                                              right: 23,
                                                              bottom: 1),
                                                          variant: ButtonVariant
                                                              .OutlineWhiteA700_1,
                                                          padding: ButtonPadding
                                                              .PaddingAll12,
                                                          fontStyle: ButtonFontStyle
                                                              .RobotoRomanBold15WhiteA700,
                                                          onTap: () =>
                                                              onTapTryagain(
                                                                  context))),
                                                  Expanded(
                                                      child: CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  40),
                                                          text: "Done",
                                                          margin: getMargin(
                                                              left: 23, top: 1),
                                                          variant: ButtonVariant
                                                              .OutlineWhiteA700_2,
                                                          padding: ButtonPadding
                                                              .PaddingAll12,
                                                          fontStyle: ButtonFontStyle
                                                              .RobotoRomanBold15WhiteA700,
                                                          onTap: () =>
                                                              onTapDone(
                                                                  context)))
                                                ])))
                                  ]))
                        ])))));
  }

  onTapTryagain(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.movieScreen);
  }

  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
