import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_icon_button.dart';

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Morbius",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium35),
                                    Row(
                                      children: [
                                        Text("Daniel Espinosa",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRomanLight15),
                                        Padding(
                                          padding: getPadding(left: 13),
                                          child: Text("2022",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanLight15),
                                        )
                                      ],
                                    )
                                  ],
                                ),
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
                                                    svgPath: ImageConstant
                                                        .imgPopularity,
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
                                              ])),
                                        ]))
                              ])),
                      Container(
                          width: getHorizontalSize(312),
                          margin: getMargin(left: 24, top: 21, right: 24),
                          child: Text("Movie Description.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular14)),
                      Padding(
                          padding: getPadding(left: 24, top: 125, right: 24),
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
                                        imagePath:
                                            ImageConstant.imgThumbsDown)),
                                CustomIconButton(
                                    height: 64,
                                    width: 64,
                                    variant:
                                        IconButtonVariant.OutlineBlack9003f_1,
                                    onTap: () {
                                      onTapBtnThumbsup(context);
                                    },
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgThumbsup))
                              ])),
                      Padding(
                        padding: getPadding(top: 13, bottom: 5),
                        child: Text("X/X",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular20WhiteA70001),
                      )
                    ]))));
  }
}

onTapBtnDisagreebutton(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
}

onTapBtnThumbsup(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.afterSelectionScreen);
}
