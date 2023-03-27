import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_icon_button.dart';

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(312),
                          margin: getMargin(left: 24, top: 21, right: 24),
                          child: Text(
                              "Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead. Dangerously ill with a rare blood disorder, and determined to save others suffering his same fate, Dr. Morbius attempts a desperate gamble.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular14)),
                      CustomImageView(
                          imagePath: ImageConstant.imgPoster376x360,
                          height: getVerticalSize(376),
                          width: getHorizontalSize(360)),
                      Padding(
                          padding: getPadding(left: 24, top: 5, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text("Morbius",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium35),
                                        Padding(
                                            padding: getPadding(
                                                left: 13, top: 15, bottom: 8),
                                            child: Text("2022",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanLight15))
                                      ]),
                                      Padding(
                                          padding: getPadding(left: 12, top: 6),
                                          child: Text("Daniel Espinosa",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanLight15))
                                    ]),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
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
                                                        height: getSize(27),
                                                        width: getSize(27),
                                                        margin: getMargin(
                                                            top: 6, bottom: 4)),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 6),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("5.2",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoRomanLight20),
                                                              Padding(
                                                                  padding: getPadding(
                                                                      top: 1),
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
                                              padding: getPadding(top: 8),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgVector,
                                                    height: getVerticalSize(15),
                                                    width:
                                                        getHorizontalSize(27),
                                                    margin: getMargin(
                                                        top: 1, bottom: 1)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 6),
                                                    child: Text("621",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanLight15))
                                              ]))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 77, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                    height: 64,
                                    width: 64,
                                    onTap: () {
                                      onTapBtnDisagreebutton(context);
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgComputer)),
                                CustomIconButton(
                                    height: 64,
                                    width: 64,
                                    variant:
                                        IconButtonVariant.OutlineBlack9003f_1,
                                    onTap: () {
                                      onTapBtnThumbsup(context);
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgThumbsup))
                              ])),
                      Padding(
                          padding: getPadding(top: 13, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("X",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanRegular20WhiteA70001),
                                Padding(
                                    padding: getPadding(left: 1, top: 1),
                                    child: Text("/",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanRegular18)),
                                Padding(
                                    padding: getPadding(left: 1),
                                    child: Text("X",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanRegular20WhiteA70001))
                              ]))
                    ]))));
  }

  onTapBtnDisagreebutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
  }

  onTapBtnThumbsup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
  }
}
