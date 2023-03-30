import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

// ignore: must_be_immutable
class MovielistItemWidget extends StatelessWidget {
  MovielistItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        110,
      ),
      width: getHorizontalSize(
        275,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                110,
              ),
              width: getHorizontalSize(
                284,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    15,
                  ),
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
                  imagePath: ImageConstant.imgPoster2,
                  height: getVerticalSize(
                    94,
                  ),
                  width: getHorizontalSize(
                    73,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      10,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 31,
                    bottom: 33,
                  ),
                  child: Text(
                    "Shrek",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanBold25,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 37,
                    top: 14,
                    bottom: 15,
                  ),
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
                              height: getSize(
                                27,
                              ),
                              width: getSize(
                                27,
                              ),
                              margin: getMargin(
                                top: 6,
                                bottom: 4,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "5.2",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanLight20,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "133K",
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
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgPopularity,
                              height: getVerticalSize(
                                15,
                              ),
                              width: getHorizontalSize(
                                27,
                              ),
                              margin: getMargin(
                                top: 1,
                                bottom: 1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                              ),
                              child: Text(
                                "621",
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
