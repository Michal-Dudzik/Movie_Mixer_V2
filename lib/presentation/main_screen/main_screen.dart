import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_iconbutton.dart';
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
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.imgLoginscreen),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(59),
                                    leadingWidth: 50,
                                    leading: AppbarIconbutton(
                                        imagePath: ImageConstant
                                            .imgArrowleftbutton44x44,
                                        margin: getMargin(left: 6),
                                        onTap: () =>
                                            onTapArrowleftbutton(context)),
                                    actions: [
                                      AppbarIconbutton(
                                          imagePath:
                                              ImageConstant.imgMenubutton,
                                          margin: getMargin(left: 5, right: 5),
                                          onTap: () => onTapMenubutton(context))
                                    ]),
                                CustomImageView(
                                    imagePath: ImageConstant.imgPremiumad,
                                    height: getVerticalSize(107),
                                    width: getHorizontalSize(357),
                                    margin: getMargin(top: 15)),
                                Padding(
                                    padding: getPadding(top: 73),
                                    child: Text("Need something to watch?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanMedium20)),
                                CustomButton(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(214),
                                    text: "Discover it!",
                                    margin: getMargin(top: 16),
                                    variant: ButtonVariant.OutlineBlack9003f,
                                    shape: ButtonShape.RoundedBorder15,
                                    padding: ButtonPadding.PaddingAll8,
                                    fontStyle:
                                        ButtonFontStyle.RobotoRomanBold18,
                                    onTap: () => onTapDiscoverit(context)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 8, top: 72),
                                        child: Text(
                                            "Check featured collections",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium20))),
                                Spacer()
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(top: 446, bottom: 118),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgPoster,
                                    height: getVerticalSize(216),
                                    width: getHorizontalSize(21),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgPoster216x144,
                                    height: getVerticalSize(216),
                                    width: getHorizontalSize(144),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgPoster1,
                                    height: getVerticalSize(216),
                                    width: getHorizontalSize(144),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgPoster216x21,
                                    height: getVerticalSize(216),
                                    width: getHorizontalSize(21),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10)))
                              ])))
                ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(63),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topRight, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage163x360,
                      height: getVerticalSize(63),
                      width: getHorizontalSize(360),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: getVerticalSize(5),
                          width: getHorizontalSize(3),
                          margin: getMargin(top: 4, right: 3),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVectorWhiteA700,
                                height: getVerticalSize(5),
                                width: getHorizontalSize(3),
                                alignment: Alignment.center),
                            CustomImageView(
                                svgPath: ImageConstant.imgVectorWhiteA700,
                                height: getVerticalSize(5),
                                width: getHorizontalSize(3),
                                alignment: Alignment.center)
                          ])))
                ]))));
  }

  onTapArrowleftbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapMenubutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountPreferencesScreen);
  }

  onTapDiscoverit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.openOrJoinScreen);
  }
}
