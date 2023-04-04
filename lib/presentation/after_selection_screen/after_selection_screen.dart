import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

final List<Movie> movies = [
  Movie(
    name: 'Demon Slayer The Movie: Mugen Train',
    imageUrl: "https://image.tmdb.org/t/p/w500/h8Rb9gBr48ODIwYUttZNYeMWeUU.jpg",
  ),
  Movie(
    name: 'John Wick: Chapter 4',
    imageUrl: "https://image.tmdb.org/t/p/w500/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg",
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
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                width: double.maxFinite,
                padding: getPadding(left: 13, right: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getVerticalSize(556),
                      width: getHorizontalSize(334),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              padding: getPadding(all: 22),
                              decoration: AppDecoration.purple.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder43,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "People have spoken",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanBold20,
                                  ),
                                  SizedBox(height: 10),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: movies.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return MovieListItemWidget(
                                          movie: movies[index],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(left: 40, right: 40, bottom: 105),
                  child: SizedBox(
                    height: getVerticalSize(40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomButton(
                            height: getVerticalSize(40),
                            text: "Try Again",
                            margin: getMargin(right: 23),
                            variant: ButtonVariant.OutlineWhiteA700_1,
                            padding: ButtonPadding.PaddingAll12,
                            fontStyle:
                                ButtonFontStyle.RobotoRomanBold15WhiteA700,
                            onTap: () => onTapTryagain(context),
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                            height: getVerticalSize(40),
                            text: "Done",
                            margin: getMargin(left: 23),
                            variant: ButtonVariant.OutlineWhiteA700_2,
                            padding: ButtonPadding.PaddingAll12,
                            fontStyle:
                                ButtonFontStyle.RobotoRomanBold15WhiteA700,
                            onTap: () => onTapDone(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

onTapTryagain(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
}

onTapDone(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
}
