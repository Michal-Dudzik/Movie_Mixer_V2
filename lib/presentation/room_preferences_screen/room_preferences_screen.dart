import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_button.dart';

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
                        image: AssetImage(ImageConstant.imgPagebackground),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 13, top: 17, right: 13, bottom: 17),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(577),
                              width: getHorizontalSize(334),
                              margin: getMargin(top: 76, bottom: 5),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: getPadding(
                                            left: 43,
                                            top: 49,
                                            right: 43,
                                            bottom: 49),
                                        decoration: AppDecoration.purple
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder43),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 18),
                                                  child: Text(
                                                      "How many movies do you want:",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular17)),
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text("10",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular15)),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("11",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular25)),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("12",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular15)),
                                              Padding(
                                                  padding: getPadding(top: 29),
                                                  child: Text(
                                                      "How many people will join room:",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular17)),
                                              Padding(
                                                  padding: getPadding(top: 12),
                                                  child: Text("4",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular15)),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("5",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular25)),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("6",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular15)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 21,
                                                      top: 28,
                                                      right: 21),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 17,
                                                                top: 7,
                                                                bottom: 3),
                                                            child: Text(
                                                                "Advanced options",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanBold20)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    35),
                                                            width:
                                                                getHorizontalSize(
                                                                    26),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgLockWhiteA700,
                                                                      height:
                                                                          getVerticalSize(
                                                                              35),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              26),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgLockWhiteA70035x26,
                                                                      height:
                                                                          getVerticalSize(
                                                                              35),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              26),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))
                                                      ])),
                                              Container(
                                                  margin: getMargin(top: 26),
                                                  padding: getPadding(
                                                      left: 19,
                                                      top: 11,
                                                      right: 19,
                                                      bottom: 11),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
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
                                                                top: 1),
                                                            child: Text(
                                                                "Preferred genres",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular17Black900)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgPlusBlack900,
                                                            height: getSize(17),
                                                            width: getSize(17),
                                                            margin: getMargin(
                                                                left: 24,
                                                                top: 2,
                                                                bottom: 2))
                                                      ])),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 8),
                                                      child: Row(children: [
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    29),
                                                            width:
                                                                getHorizontalSize(
                                                                    60),
                                                            text: "Action",
                                                            shape: ButtonShape
                                                                .RoundedBorder10),
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    29),
                                                            width:
                                                                getHorizontalSize(
                                                                    60),
                                                            text: "Comedy",
                                                            margin: getMargin(
                                                                left: 4),
                                                            shape: ButtonShape
                                                                .RoundedBorder10)
                                                      ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 43, right: 43),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f1,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                            child: CustomButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        42),
                                                                text: "Movie",
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineWhiteA700,
                                                                shape: ButtonShape
                                                                    .CustomBorderTL10,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanBold20WhiteA700)),
                                                        Expanded(
                                                            child: CustomButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        42),
                                                                text:
                                                                    "TV Series",
                                                                variant:
                                                                    ButtonVariant
                                                                        .Cyan,
                                                                shape: ButtonShape
                                                                    .CustomBorderLR10,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanBold20WhiteA700))
                                                      ])),
                                              Spacer(),
                                              CustomButton(
                                                  height: getVerticalSize(40),
                                                  text: "Open Room",
                                                  variant: ButtonVariant
                                                      .OutlineBlack9003f,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRomanMedium20,
                                                  onTap: () =>
                                                      onTapOpenroom(context))
                                            ])))
                              ])),
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getVerticalSize(17),
                              width: getHorizontalSize(23),
                              margin: getMargin(left: 1),
                              onTap: () {
                                onTapImgArrowleft(context);
                              })
                        ])))));
  }

  onTapOpenroom(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.waitingRoomScreen);
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
