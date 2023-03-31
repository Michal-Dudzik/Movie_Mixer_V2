import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

class AccountPreferencesScreen extends StatelessWidget {
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
                              svgPath: ImageConstant.imgArrowBack,
                              height: getVerticalSize(17),
                              width: getHorizontalSize(23),
                              margin: getMargin(left: 1),
                              onTap: () {
                                Navigator.of(context).pop();
                              }),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  width: getHorizontalSize(334),
                                  margin: getMargin(top: 97, bottom: 5),
                                  padding: getPadding(all: 22),
                                  decoration: AppDecoration.purple.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder43),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Manage account",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRomanBold20),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 37, bottom: 404),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSlider,
                                                          height:
                                                              getVerticalSize(
                                                                  24),
                                                          width:
                                                              getHorizontalSize(
                                                                  48),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      12))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 8),
                                                          child: Text(
                                                              "Notifications",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRomanRegular20))
                                                    ])))
                                      ])))
                        ])))));
  }
}
