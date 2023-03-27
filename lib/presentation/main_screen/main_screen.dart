import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_image.dart';
import 'package:movie_mixer/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_mixer/widgets/custom_button.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: size.height,
                          width: getHorizontalSize(359),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPagebackground,
                                height: getVerticalSize(800),
                                width: getHorizontalSize(359),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(top: 17),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(17),
                                              leadingWidth: 38,
                                              leading: AppbarImage(
                                                  height: getVerticalSize(17),
                                                  width: getHorizontalSize(23),
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  margin: getMargin(left: 15),
                                                  onTap: () =>
                                                      onTapArrowleft(context)),
                                              actions: [
                                                AppbarImage(
                                                    height: getVerticalSize(17),
                                                    width:
                                                        getHorizontalSize(23),
                                                    svgPath:
                                                        ImageConstant.imgMenu,
                                                    margin: getMargin(
                                                        left: 14, right: 14))
                                              ]),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPremiumad,
                                              height: getVerticalSize(110),
                                              width: getHorizontalSize(359),
                                              margin: getMargin(top: 17)),
                                          Padding(
                                              padding: getPadding(top: 85),
                                              child: Text(
                                                  "Need something to watch?",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular22)),
                                          CustomButton(
                                              height: getVerticalSize(40),
                                              width: getHorizontalSize(181),
                                              text: "Discover it!",
                                              margin: getMargin(top: 18),
                                              variant: ButtonVariant
                                                  .OutlineBlack9003f_2,
                                              fontStyle: ButtonFontStyle
                                                  .RobotoRomanRegular18),
                                          Spacer(),
                                          Container(
                                              height: getVerticalSize(80),
                                              width: getHorizontalSize(359),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage,
                                                        height:
                                                            getVerticalSize(80),
                                                        width:
                                                            getHorizontalSize(
                                                                359),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgClose,
                                                        height: getSize(6),
                                                        width: getSize(6),
                                                        alignment:
                                                            Alignment.topRight,
                                                        margin: getMargin(
                                                            top: 5, right: 2))
                                                  ]))
                                        ])))
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(bottom: 128),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 11),
                                    child: Text("Check featured collections",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanRegular20)),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPoster,
                                              height: getVerticalSize(216),
                                              width: getHorizontalSize(21),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgPoster216x144,
                                              height: getVerticalSize(216),
                                              width: getHorizontalSize(144),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPoster1,
                                              height: getVerticalSize(216),
                                              width: getHorizontalSize(144),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPoster216x21,
                                              height: getVerticalSize(216),
                                              width: getHorizontalSize(21),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)))
                                        ]))
                              ])))
                ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
