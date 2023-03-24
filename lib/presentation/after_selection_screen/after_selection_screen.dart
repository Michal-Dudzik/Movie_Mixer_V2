import '../after_selection_screen/widgets/listposter_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_image.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_image_1.dart';
import 'package:movie_mixer/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_mixer/widgets/custom_button.dart';

class AfterSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.gray900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginscreen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 13, right: 13),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: getVerticalSize(641),
                              width: getHorizontalSize(334),
                              margin: getMargin(top: 15),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 15,
                                                top: 8,
                                                right: 15,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .outlineWhiteA700b2
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder43),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("The people have spoken",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanBold20),
                                                  Container(
                                                      height:
                                                          getVerticalSize(24),
                                                      width: getHorizontalSize(
                                                          304),
                                                      margin:
                                                          getMargin(top: 11),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            111),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            304),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(10))))),
                                                            CustomAppBar(
                                                                height:
                                                                    getVerticalSize(
                                                                        95),
                                                                title: AppbarImage(
                                                                    height:
                                                                        getVerticalSize(
                                                                            95),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            73),
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgPoster95x73,
                                                                    margin: getMargin(
                                                                        left:
                                                                            37)),
                                                                actions: [
                                                                  AppbarImage1(
                                                                      height:
                                                                          getVerticalSize(
                                                                              15),
                                                                      width: getHorizontalSize(
                                                                          26),
                                                                      svgPath: ImageConstant
                                                                          .imgVector,
                                                                      margin: getMargin(
                                                                          left:
                                                                              64,
                                                                          top:
                                                                              64,
                                                                          right:
                                                                              64,
                                                                          bottom:
                                                                              16))
                                                                ])
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 14),
                                                      child: ListView.separated(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        14));
                                                          },
                                                          itemCount: 4,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return ListposterItemWidget();
                                                          })),
                                                  Container(
                                                      height:
                                                          getVerticalSize(24),
                                                      width: getHorizontalSize(
                                                          304),
                                                      margin: getMargin(
                                                          top: 14, bottom: 5),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            111),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            304),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(10))))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 9,
                                                                        top: 8,
                                                                        right:
                                                                            38),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgPoster6,
                                                                              height: getVerticalSize(95),
                                                                              width: getHorizontalSize(73),
                                                                              radius: BorderRadius.circular(getHorizontalSize(10))),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgStar,
                                                                              height: getVerticalSize(20),
                                                                              width: getHorizontalSize(24),
                                                                              margin: getMargin(top: 16, bottom: 59))
                                                                        ])))
                                                          ]))
                                                ]))),
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(109),
                                        text: "Try Again",
                                        margin: getMargin(left: 36),
                                        variant:
                                            ButtonVariant.OutlineWhiteA70001_2,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRomanBold15,
                                        onTap: () => onTapTryagain(context),
                                        alignment: Alignment.bottomLeft),
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(109),
                                        text: "Done",
                                        margin: getMargin(right: 36),
                                        variant:
                                            ButtonVariant.OutlineWhiteA70001_3,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRomanBold15,
                                        onTap: () => onTapDone(context),
                                        alignment: Alignment.bottomRight)
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
