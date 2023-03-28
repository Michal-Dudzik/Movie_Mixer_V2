import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_mixer/widgets/custom_button.dart';
import 'package:movie_mixer/widgets/custom_text_form_field.dart';

import '../../widgets/app_bar/appbar_image.dart';

class RoomModal extends StatelessWidget {
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
                                              margin: getMargin(top: 18)),
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
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 30, top: 310, right: 30, bottom: 310),
                          // decoration: AppDecoration.fillGray900,
                          color: ColorConstant.gray900.withOpacity(0.8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        padding: getPadding(
                                            left: 26,
                                            top: 37,
                                            right: 26,
                                            bottom: 37),
                                        decoration: AppDecoration.fillGray900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder43),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                        height:
                                                            getVerticalSize(46),
                                                        width:
                                                            getHorizontalSize(
                                                                185),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomTextFormField(
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  isObscureText:
                                                                      false,
                                                                  // controller:
                                                                  //     guestbuttonController,
                                                                  hintText:
                                                                      "Room code",
                                                                  margin: getMargin(
                                                                      left: 33,
                                                                      top: 16,
                                                                      right:
                                                                          33),
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done)
                                                            ])),
                                                    GestureDetector(
                                                        onTap: () {
                                                          joinRoom(context);
                                                        },
                                                        child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin: getMargin(
                                                                bottom: 2),
                                                            color: ColorConstant
                                                                .cyan600,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            50))),
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        46),
                                                                width:
                                                                    getHorizontalSize(
                                                                        55),
                                                                padding:
                                                                    getPadding(
                                                                        all: 9),
                                                                decoration: AppDecoration
                                                                    .outlineIndigo3001c
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder15),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgGoogle,
                                                                          height: getVerticalSize(
                                                                              23),
                                                                          width: getHorizontalSize(
                                                                              23),
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ])))),
                                                  ]),
                                              CustomButton(
                                                  height: getVerticalSize(40),
                                                  text: "Create new room",
                                                  margin: getMargin(top: 19),
                                                  variant: ButtonVariant.Cyan,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRomanRegular18)
                                            ])))
                              ])))
                ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  joinRoom(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.waitingRoomScreen);
  }
}
