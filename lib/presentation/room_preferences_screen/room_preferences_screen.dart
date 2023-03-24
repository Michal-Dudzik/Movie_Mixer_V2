import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_button.dart';
import 'package:movie_mixer/widgets/custom_icon_button.dart';

class RoomPreferencesScreen extends StatelessWidget {
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
                    padding: getPadding(left: 6, top: 15, right: 6, bottom: 15),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                              height: 44,
                              width: 44,
                              onTap: () {
                                onTapBtnArrowleftbutton(context);
                              },
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowleftbutton44x44)),
                          Container(
                              height: getVerticalSize(577),
                              width: getHorizontalSize(334),
                              margin: getMargin(left: 7, top: 52, bottom: 5),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: getPadding(
                                            left: 35,
                                            top: 41,
                                            right: 35,
                                            bottom: 41),
                                        decoration: AppDecoration
                                            .outlineWhiteA700b2
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder43),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 25),
                                                  child: Text(
                                                      "How many movies do you want:",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium18)),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text("10",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("11",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium30)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("12",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15)),
                                              Padding(
                                                  padding: getPadding(top: 29),
                                                  child: Text(
                                                      "How many people will join room:",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium18)),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text("4",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("5",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium30)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("6",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15)),
                                              Container(
                                                  margin: getMargin(
                                                      top: 26, right: 2),
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 8,
                                                      right: 9,
                                                      bottom: 8),
                                                  decoration: AppDecoration
                                                      .fillWhiteA70001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5,
                                                                bottom: 3),
                                                            child: Text(
                                                                "Preferred genres",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular15)),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgPlus,
                                                            height: getSize(26),
                                                            width: getSize(26),
                                                            margin: getMargin(
                                                                left: 39,
                                                                top: 1))
                                                      ])),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Row(children: [
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    29),
                                                            width:
                                                                getHorizontalSize(
                                                                    64),
                                                            text: "Action",
                                                            variant: ButtonVariant
                                                                .FillWhiteA70001,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingAll5,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoRomanRegular15),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    64),
                                                            margin: getMargin(
                                                                left: 4),
                                                            padding: getPadding(
                                                                left: 3,
                                                                top: 5,
                                                                right: 3,
                                                                bottom: 5),
                                                            decoration: AppDecoration
                                                                .txtFillWhiteA70001
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtRoundedBorder10),
                                                            child: Text(
                                                                "Comedy",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular15))
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 38,
                                                      top: 47,
                                                      right: 27),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgLock,
                                                            height:
                                                                getVerticalSize(
                                                                    19),
                                                            width:
                                                                getHorizontalSize(
                                                                    20),
                                                            margin: getMargin(
                                                                top: 1,
                                                                bottom: 3)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 15),
                                                            child: Text(
                                                                "Advanced options",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanBold20))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 35, right: 35),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    42),
                                                            width:
                                                                getHorizontalSize(
                                                                    131),
                                                            text: "Movie",
                                                            variant: ButtonVariant
                                                                .OutlineWhiteA70001,
                                                            shape: ButtonShape
                                                                .CustomBorderTL10,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingAll8,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoRomanBold20),
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    42),
                                                            width:
                                                                getHorizontalSize(
                                                                    131),
                                                            text: "TV Series",
                                                            margin: getMargin(
                                                                left: 2),
                                                            variant: ButtonVariant
                                                                .OutlineWhiteA70001_1,
                                                            shape: ButtonShape
                                                                .CustomBorderLR10,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingAll8,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoRomanBold20)
                                                      ])),
                                              Spacer(),
                                              CustomButton(
                                                  height: getVerticalSize(40),
                                                  text: "Open Room",
                                                  margin: getMargin(
                                                      left: 24, right: 26),
                                                  variant: ButtonVariant
                                                      .OutlineWhiteA70001_3,
                                                  shape: ButtonShape
                                                      .RoundedBorder15,
                                                  padding:
                                                      ButtonPadding.PaddingAll8,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRomanMedium18,
                                                  onTap: () =>
                                                      onTapOpenroom(context))
                                            ])))
                              ]))
                        ])))));
  }

  onTapBtnArrowleftbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }

  onTapOpenroom(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.waitingRoomScreen);
  }
}
