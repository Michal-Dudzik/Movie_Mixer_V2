import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_text_form_field.dart';

class CreateAccountScreen extends StatelessWidget {
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
                        getPadding(left: 13, top: 17, right: 13, bottom: 17),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getVerticalSize(17),
                              width: getHorizontalSize(23),
                              margin: getMargin(left: 1),
                              onTap: () {
                                Navigator.of(context).pop();
                              }),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 97, bottom: 5),
                                  padding: getPadding(
                                      left: 22, top: 20, right: 22, bottom: 20),
                                  decoration: AppDecoration.purple.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder43),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Create account",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanBold20)),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            isObscureText: false,
                                            // controller:
                                            //     guestbuttonController,
                                            hintText: "E-Mail",
                                            margin: getMargin(
                                                left: 21, top: 28, right: 21),
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            isObscureText: true,
                                            hintText: "Password",
                                            margin: getMargin(
                                                left: 21, top: 28, right: 21),
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            isObscureText: true,
                                            hintText: "Repeat password",
                                            margin: getMargin(
                                                left: 21, top: 28, right: 21),
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomButton(
                                            height: getVerticalSize(40),
                                            text: "Create account",
                                            margin: getMargin(
                                                left: 38, top: 30, right: 38),
                                            variant: ButtonVariant
                                                .OutlineBlack9003f_1,
                                            fontStyle: ButtonFontStyle
                                                .RobotoRomanRegular18WhiteA700,
                                            onTap: () =>
                                                onTapCreateaccount(context)),
                                        Padding(
                                            padding: getPadding(top: 32),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 6, bottom: 7),
                                                      child: SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  93),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: ColorConstant
                                                                  .ghostWhite))),
                                                  Text("or continue with",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular12),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 7, bottom: 6),
                                                      child: SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  93),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: ColorConstant
                                                                  .ghostWhite)))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 21, top: 31, right: 21),
                                            padding: getPadding(
                                                left: 10,
                                                top: 6,
                                                right: 10,
                                                bottom: 6),
                                            decoration: AppDecoration
                                                .outlineWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGoogle,
                                                      height:
                                                          getVerticalSize(21),
                                                      width: getHorizontalSize(
                                                          23)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 32,
                                                          top: 4,
                                                          right: 55,
                                                          bottom: 1),
                                                      child: Text(
                                                          "Continue with Google",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular12Black900))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 21,
                                                top: 18,
                                                right: 21,
                                                bottom: 20),
                                            padding: getPadding(
                                                left: 11,
                                                top: 4,
                                                right: 11,
                                                bottom: 4),
                                            decoration: AppDecoration.black
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      color: ColorConstant
                                                          .ghostWhite,
                                                      svgPath: ImageConstant
                                                          .imgApple,
                                                      height:
                                                          getVerticalSize(25),
                                                      width:
                                                          getHorizontalSize(23),
                                                      margin:
                                                          getMargin(bottom: 1)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 36,
                                                          top: 7,
                                                          right: 59,
                                                          bottom: 4),
                                                      child: Text(
                                                          "Continue with Apple",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular12))
                                                ]))
                                      ]))),
                        ])))));
  }

  onTapCreateaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
