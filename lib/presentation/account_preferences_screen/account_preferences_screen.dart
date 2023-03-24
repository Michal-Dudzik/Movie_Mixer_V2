import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_icon_button.dart';

class AccountPreferencesScreen extends StatelessWidget {
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
                    padding:
                        getPadding(left: 13, top: 15, right: 13, bottom: 15),
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
                              margin: getMargin(top: 73, bottom: 5),
                              padding: getPadding(
                                  left: 36, top: 64, right: 36, bottom: 64),
                              decoration: AppDecoration.outlineWhiteA700b2
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder43),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgToggleon,
                                        height: getVerticalSize(24),
                                        width: getHorizontalSize(58),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(12)),
                                        margin: getMargin(bottom: 381)),
                                    Padding(
                                        padding:
                                            getPadding(left: 8, bottom: 376),
                                        child: Text("App notifications",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRomanLight25))
                                  ]))
                        ])))));
  }

  onTapBtnArrowleftbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }
}
