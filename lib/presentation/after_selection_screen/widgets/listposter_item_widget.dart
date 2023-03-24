import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

// ignore: must_be_immutable
class ListposterItemWidget extends StatelessWidget {
  ListposterItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 9,
        top: 8,
        right: 9,
        bottom: 8,
      ),
      decoration: AppDecoration.fillGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPoster2,
            height: getVerticalSize(
              95,
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
              left: 12,
              top: 22,
              bottom: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Shrek",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanBold25,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "12.07.2001",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanLight12,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                        ),
                        child: Text(
                          "90m",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanLight12Gray600ab,
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
              left: 40,
              top: 14,
              bottom: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getVerticalSize(
                        20,
                      ),
                      width: getHorizontalSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 1,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "7.9",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanLight10,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "692K",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanLight8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgVector,
                        height: getVerticalSize(
                          15,
                        ),
                        width: getHorizontalSize(
                          26,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                          bottom: 2,
                        ),
                        child: Text(
                          "653",
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
        ],
      ),
    );
  }
}
