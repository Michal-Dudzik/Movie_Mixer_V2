import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_button.dart';
import 'package:movie_mixer/widgets/custom_icon_button.dart';
import 'package:movie_mixer/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateAccountScreen extends StatelessWidget {
  TextEditingController applebuttonController = TextEditingController();

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
                    padding: getPadding(left: 6, top: 34, right: 6, bottom: 34),
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
                                  imagePath: ImageConstant.imgArrowleftbutton)),
                          Container(
                              margin: getMargin(
                                  left: 7, top: 54, right: 7, bottom: 5),
                              padding: getPadding(
                                  left: 22, top: 24, right: 22, bottom: 24),
                              decoration: AppDecoration.outlineWhiteA700b2
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder43),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Create account",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanBold20),
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        text: "E-mail",
                                        margin: getMargin(
                                            left: 17, top: 47, right: 17)),
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        text: "Password",
                                        margin: getMargin(
                                            left: 17, top: 28, right: 17)),
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        text: "Repeat password",
                                        margin: getMargin(
                                            left: 17, top: 28, right: 17)),
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        text: "Create account",
                                        margin: getMargin(
                                            left: 38, top: 46, right: 38),
                                        variant:
                                            ButtonVariant.OutlineBlack9003f_1,
                                        shape: ButtonShape.RoundedBorder15,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRomanMedium12,
                                        onTap: () =>
                                            onTapCreateaccount(context)),
                                    Padding(
                                        padding: getPadding(top: 30),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 6, bottom: 7),
                                                  child: SizedBox(
                                                      width:
                                                          getHorizontalSize(93),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .ghostWhite))),
                                              Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Text(
                                                      "or continue with",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular12)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 7, bottom: 6),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          101),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .ghostWhite,
                                                          indent:
                                                              getHorizontalSize(
                                                                  8))))
                                            ])),
                                    Container(
                                        margin: getMargin(
                                            left: 36, top: 19, right: 34),
                                        padding: getPadding(
                                            left: 9,
                                            top: 6,
                                            right: 9,
                                            bottom: 6),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgGoogle,
                                                  height: getVerticalSize(21),
                                                  width: getHorizontalSize(20)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 21,
                                                      top: 4,
                                                      right: 42,
                                                      bottom: 1),
                                                  child: Text(
                                                      "Continue with Google",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanBold12))
                                            ])),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: applebuttonController,
                                        hintText: "Continue with Apple",
                                        margin: getMargin(
                                            left: 36, top: 18, right: 34),
                                        variant:
                                            TextFormFieldVariant.FillBlack900,
                                        shape:
                                            TextFormFieldShape.RoundedBorder10,
                                        padding:
                                            TextFormFieldPadding.PaddingT10,
                                        fontStyle: TextFormFieldFontStyle
                                            .RobotoRomanBold12,
                                        textInputAction: TextInputAction.done,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 10,
                                                top: 3,
                                                right: 24,
                                                bottom: 3),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgPath4)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(35)))
                                  ]))
                        ])))));
  }

  onTapBtnArrowleftbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapCreateaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
