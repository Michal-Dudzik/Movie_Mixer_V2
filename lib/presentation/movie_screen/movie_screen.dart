import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_icon_button.dart';

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray90002,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(445),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: getVerticalSize(376),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgPoster376x360,
                                              height: getVerticalSize(376),
                                              width: getHorizontalSize(360),
                                              alignment: Alignment.center),
                                          CustomIconButton(
                                              height: 44,
                                              width: 44,
                                              margin:
                                                  getMargin(left: 6, top: 15),
                                              alignment: Alignment.topLeft,
                                              onTap: () {
                                                onTapBtnArrowleftbutton(
                                                    context);
                                              },
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowleftbutton44x44))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 24, bottom: 11),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Text("Morbius",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanBold32),
                                            Padding(
                                                padding: getPadding(
                                                    left: 8,
                                                    top: 17,
                                                    bottom: 5),
                                                child: Text("01.04.2022",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanLight12))
                                          ]),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Text("Daniel Espinosa",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanLight12))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(right: 31),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgStar,
                                                        height:
                                                            getVerticalSize(26),
                                                        width:
                                                            getHorizontalSize(
                                                                27),
                                                        margin: getMargin(
                                                            top: 6, bottom: 2)),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 6),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      "5.2",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoRomanLight20)),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Text(
                                                                      "133K",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoRomanLight10))
                                                            ]))
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgVector,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(28),
                                                    margin:
                                                        getMargin(bottom: 1)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 5),
                                                    child: Text("621",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanLight15))
                                              ]))
                                        ])))
                          ])),
                      Container(
                          width: getHorizontalSize(316),
                          margin: getMargin(left: 24, top: 23, right: 19),
                          child: Text(
                              "Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead. Dangerously ill with a rare blood disorder, and determined to save others suffering his same fate, Dr. Morbius attempts a desperate gamble.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular14)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 77, right: 42),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomIconButton(
                                        height: 64,
                                        width: 64,
                                        variant:
                                            IconButtonVariant.OutlineBlack9003f,
                                        shape: IconButtonShape.CircleBorder32,
                                        padding: IconButtonPadding.PaddingAll12,
                                        onTap: () {
                                          onTapBtnComputer(context);
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgComputer)),
                                    CustomIconButton(
                                        height: 64,
                                        width: 64,
                                        variant: IconButtonVariant
                                            .OutlineBlack9003f_1,
                                        shape: IconButtonShape.CircleBorder32,
                                        padding: IconButtonPadding.PaddingAll12,
                                        onTap: () {
                                          onTapBtnThumbsup(context);
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgThumbsup))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 3, bottom: 5),
                          child: Text("1/6",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold20.copyWith(
                                  letterSpacing: getHorizontalSize(0.38))))
                    ]))));
  }

  onTapBtnArrowleftbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainScreen);
  }

  onTapBtnComputer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
  }

  onTapBtnThumbsup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
  }
}
