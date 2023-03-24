import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_button.dart';
import 'package:movie_mixer/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController enterasguestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
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
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 20),
                                  padding: getPadding(
                                      left: 9, top: 37, right: 9, bottom: 37),
                                  decoration: AppDecoration.outlineWhiteA700b2
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder43),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(129),
                                            width: getHorizontalSize(315),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: getSize(129),
                                                          width: getSize(129),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getSize(
                                                                            115),
                                                                        width: getSize(
                                                                            115),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                57)),
                                                                            border: Border.all(
                                                                                color: ColorConstant.whiteA700B2,
                                                                                width: getHorizontalSize(1),
                                                                                strokeAlign: strokeAlignOutside)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getSize(
                                                                            129),
                                                                        width: getSize(
                                                                            129),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                64)),
                                                                            border: Border.all(
                                                                                color: ColorConstant.cyan600,
                                                                                width: getHorizontalSize(2),
                                                                                strokeAlign: strokeAlignOutside)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getSize(
                                                                            116),
                                                                        width: getSize(
                                                                            116),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                58)),
                                                                            border: Border.all(
                                                                                color: ColorConstant.pink600,
                                                                                width: getHorizontalSize(2),
                                                                                strokeAlign: strokeAlignOutside)))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgLogo,
                                                                    height:
                                                                        getSize(
                                                                            115),
                                                                    width:
                                                                        getSize(
                                                                            115),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            57)),
                                                                    alignment:
                                                                        Alignment
                                                                            .center)
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  42),
                                                          width:
                                                              getHorizontalSize(
                                                                  94),
                                                          margin: getMargin(
                                                              bottom: 3),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        height: getVerticalSize(30),
                                                                        width: getHorizontalSize(94),
                                                                        margin: getMargin(bottom: 4),
                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Text("Mixer", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtClip36)),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Text("Mixer", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtClip36WhiteA700b2))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                        "Mixer",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtClip36Cyan600))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  42),
                                                          width:
                                                              getHorizontalSize(
                                                                  103),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        height: getVerticalSize(30),
                                                                        width: getHorizontalSize(103),
                                                                        margin: getMargin(bottom: 4),
                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Text("Movie ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtClip36Pink600)),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Text("Movie ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtClip36WhiteA700b2))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                        "Movie ",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtClip36Pink6001))
                                                              ])))
                                                ])),
                                        CustomButton(
                                            height: getVerticalSize(40),
                                            text: "E-Mail",
                                            margin: getMargin(
                                                left: 31, top: 29, right: 29),
                                            variant:
                                                ButtonVariant.FillWhiteA70001),
                                        CustomButton(
                                            height: getVerticalSize(40),
                                            text: "Password",
                                            margin: getMargin(
                                                left: 30, top: 18, right: 30),
                                            variant:
                                                ButtonVariant.FillWhiteA70001),
                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Text("Forgot password",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanThin12)),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(34),
                                                      width:
                                                          getHorizontalSize(96),
                                                      text: "Sign up",
                                                      variant: ButtonVariant
                                                          .OutlineBlack9003f,
                                                      shape: ButtonShape
                                                          .RoundedBorder15,
                                                      padding: ButtonPadding
                                                          .PaddingAll8,
                                                      fontStyle: ButtonFontStyle
                                                          .RobotoRomanMedium15,
                                                      onTap: () =>
                                                          onTapSignup(context)),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(34),
                                                      width:
                                                          getHorizontalSize(95),
                                                      text: "Sign in",
                                                      margin:
                                                          getMargin(left: 22),
                                                      variant: ButtonVariant
                                                          .OutlineBlack9003f,
                                                      shape: ButtonShape
                                                          .RoundedBorder15,
                                                      padding: ButtonPadding
                                                          .PaddingAll8,
                                                      fontStyle: ButtonFontStyle
                                                          .RobotoRomanMedium15,
                                                      onTap: () =>
                                                          onTapSignin(context))
                                                ])),
                                        CustomTextFormField(
                                            width: getHorizontalSize(214),
                                            focusNode: FocusNode(),
                                            controller: enterasguestController,
                                            hintText: "Enter as a guest",
                                            margin:
                                                getMargin(top: 18, bottom: 58),
                                            textInputAction:
                                                TextInputAction.done)
                                      ])))
                        ])))));
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAccountScreen);
  }

  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
