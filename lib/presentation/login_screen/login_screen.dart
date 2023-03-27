import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_button.dart';
import 'package:movie_mixer/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController guestbuttonController = TextEditingController();

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
                    boxShadow: [
                      BoxShadow(
                          color: ColorConstant.black9003f,
                          spreadRadius: getHorizontalSize(2),
                          blurRadius: getHorizontalSize(2),
                          offset: Offset(0, 4))
                    ],
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPagebackground),
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
                                  padding: getPadding(
                                      left: 10, top: 34, right: 10, bottom: 34),
                                  decoration: AppDecoration.purple.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder43),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(142),
                                            width: getHorizontalSize(314),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgNeonMovie,
                                                      height: getSize(58),
                                                      width: getSize(127),
                                                      alignment:
                                                          Alignment.topLeft),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgNeonMixer,
                                                      height: getSize(58),
                                                      width: getSize(127),
                                                      alignment: Alignment
                                                          .bottomRight),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLogo328x328,
                                                      height: getSize(130),
                                                      width: getSize(130),
                                                      alignment:
                                                          Alignment.center)
                                                ])),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            textInputType:
                                                TextInputType.emailAddress,
                                            isObscureText: false,
                                            // controller:
                                            //     guestbuttonController,
                                            hintText: "E-Mail",
                                            margin: getMargin(
                                                left: 33, top: 16, right: 33),
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            isObscureText: true,
                                            hintText: "Password",
                                            margin: getMargin(
                                                left: 33, top: 16, right: 33),
                                            textInputAction:
                                                TextInputAction.done),
                                        Container(
                                            margin: getMargin(
                                                left: 33,
                                                top: 33,
                                                right: 33,
                                                bottom: 17),
                                            decoration: AppDecoration
                                                .outlineBlack9003f1
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
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
                                                        // GestureDetector(
                                                        //     onTap: () {
                                                        //       onTapGooglebutton(
                                                        //           context);
                                                        //     },
                                                        //     child: Card(
                                                        //         clipBehavior: Clip
                                                        //             .antiAlias,
                                                        //         elevation: 0,
                                                        //         margin:
                                                        //             getMargin(
                                                        //                 bottom:
                                                        //                     2),
                                                        //         color: ColorConstant
                                                        //             .whiteA700,
                                                        //         shape: RoundedRectangleBorder(
                                                        //             borderRadius:
                                                        //                 BorderRadius.circular(getHorizontalSize(
                                                        //                     15))),
                                                        //         child:
                                                        //             Container(
                                                        //                 height: getVerticalSize(
                                                        //                     40),
                                                        //                 width: getHorizontalSize(
                                                        //                     55),
                                                        //                 padding: getPadding(
                                                        //                     left:
                                                        //                         16,
                                                        //                     top:
                                                        //                         8,
                                                        //                     right:
                                                        //                         16,
                                                        //                     bottom:
                                                        //                         8),
                                                        //                 decoration: AppDecoration
                                                        //                     .outlineIndigo3001c
                                                        //                     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                                                        //                 child: Stack(children: [
                                                        //                   CustomImageView(
                                                        //                       svgPath: ImageConstant.imgGoogle,
                                                        //                       height: getVerticalSize(23),
                                                        //                       width: getHorizontalSize(23),
                                                        //                       alignment: Alignment.center)
                                                        //                 ])))),
                                                        // GestureDetector(
                                                        //     onTap: () {
                                                        //       onTapApplebutton(
                                                        //           context);
                                                        //     },
                                                        //     child: Card(
                                                        //         clipBehavior: Clip
                                                        //             .antiAlias,
                                                        //         elevation: 0,
                                                        //         margin:
                                                        //             getMargin(
                                                        //                 bottom:
                                                        //                     2),
                                                        //         color: ColorConstant
                                                        //             .whiteA700,
                                                        //         shape: RoundedRectangleBorder(
                                                        //             borderRadius:
                                                        //                 BorderRadius.circular(getHorizontalSize(
                                                        //                     15))),
                                                        //         child:
                                                        //             Container(
                                                        //                 height: getVerticalSize(
                                                        //                     40),
                                                        //                 width: getHorizontalSize(
                                                        //                     55),
                                                        //                 padding: getPadding(
                                                        //                     left:
                                                        //                         16,
                                                        //                     top:
                                                        //                         8,
                                                        //                     right:
                                                        //                         16,
                                                        //                     bottom:
                                                        //                         8),
                                                        //                 decoration: AppDecoration
                                                        //                     .outlineIndigo3001c
                                                        //                     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                                                        //                 child: Stack(children: [
                                                        //                   CustomImageView(
                                                        //                       svgPath: ImageConstant.imgApple,
                                                        //                       height: getVerticalSize(23),
                                                        //                       width: getHorizontalSize(19),
                                                        //                       alignment: Alignment.center)
                                                        //                 ])))),
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    40),
                                                            width:
                                                                getHorizontalSize(
                                                                    100),
                                                            text: "Sign in",
                                                            variant: ButtonVariant
                                                                .OutlineBlack9003f_2,
                                                            padding: ButtonPadding
                                                                .PaddingAll12,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoRomanRegular15,
                                                            onTap: () =>
                                                                onTapSignin(
                                                                    context))
                                                      ]),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(39),
                                                      text: "Sign up",
                                                      margin:
                                                          getMargin(top: 26),
                                                      variant: ButtonVariant
                                                          .OutlineBlack9003f_2,
                                                      fontStyle: ButtonFontStyle
                                                          .RobotoRomanRegular18,
                                                      onTap: () =>
                                                          onTapSignup(context)),
                                                  // CustomButton(
                                                  //   height: getVerticalSize(39),
                                                  //   text: "Enter as a guest",
                                                  //   margin: getMargin(top: 26),
                                                  //   variant: ButtonVariant
                                                  //       .OutlineBlack9003f_1,
                                                  //   fontStyle: ButtonFontStyle
                                                  //       .RobotoRomanRegular18,
                                                  //   onTap: () =>
                                                  //       onTapGuest(context),
                                                ]))
                                      ])))
                        ])))));
  }

  onTapGooglebutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }

  onTapApplebutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }

  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAccountScreen);
  }

  onTapGuest(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
