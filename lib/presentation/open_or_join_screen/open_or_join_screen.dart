import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_image.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_image_1.dart';
import 'package:movie_mixer/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_mixer/widgets/custom_button.dart';

class OpenOrJoinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray90001,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                title: Container(
                    height: getVerticalSize(46),
                    width: getHorizontalSize(183),
                    margin: getMargin(left: 31),
                    child: Stack(alignment: Alignment.center, children: [
                      AppbarImage(
                          height: getVerticalSize(46),
                          width: getHorizontalSize(183),
                          svgPath: ImageConstant.imgPlaceforroomcode),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 30, top: 16, right: 28, bottom: 14),
                              child: Text("Enter code to join room",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanMedium12)))
                    ])),
                actions: [
                  Container(
                      height: getVerticalSize(46),
                      width: getHorizontalSize(45.000015),
                      margin: getMargin(left: 17, top: 5, right: 31, bottom: 5),
                      child: Stack(alignment: Alignment.center, children: [
                        AppbarImage1(
                            height: getVerticalSize(46),
                            width: getHorizontalSize(45),
                            svgPath: ImageConstant.imgJoinbutton),
                        AppbarImage1(
                            height: getSize(27),
                            width: getSize(27),
                            svgPath: ImageConstant.imgCheckmark,
                            margin:
                                getMargin(left: 9, top: 9, right: 8, bottom: 9))
                      ]))
                ]),
            body: CustomButton(
                height: getVerticalSize(45),
                text: "Create new room",
                margin: getMargin(left: 31, top: 14, right: 31, bottom: 5),
                variant: ButtonVariant.FillCyan600,
                padding: ButtonPadding.PaddingAll15,
                fontStyle: ButtonFontStyle.RobotoRomanMedium12Black900,
                onTap: () => onTapCreatenewroom(context))));
  }

  onTapCreatenewroom(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.roomPreferencesScreen);
  }
}
