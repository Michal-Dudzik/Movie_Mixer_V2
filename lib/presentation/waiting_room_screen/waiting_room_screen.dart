import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_icon_button.dart';

class WaitingRoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 6, top: 15, right: 6, bottom: 15),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.imgLoginscreen),
                                  fit: BoxFit.cover)),
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
                                        imagePath: ImageConstant
                                            .imgArrowleftbutton44x44)),
                                Container(
                                    height: getVerticalSize(556),
                                    width: getHorizontalSize(341),
                                    margin: getMargin(top: 73, bottom: 77),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: getVerticalSize(536),
                                                  width: getHorizontalSize(334),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray900,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  43)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .whiteA700B2,
                                                          width:
                                                              getHorizontalSize(
                                                                  1))))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapColumnstart(context);
                                                  },
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 66, right: 61),
                                                      padding: getPadding(
                                                          left: 86,
                                                          top: 8,
                                                          right: 86,
                                                          bottom: 8),
                                                      decoration: AppDecoration
                                                          .outlineWhiteA70001,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Start",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanSemiBold18)
                                                          ])))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  margin: getMargin(right: 59),
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 5,
                                                      right: 16,
                                                      bottom: 5),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup72),
                                                          fit: BoxFit.cover)),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 114),
                                                            child: Text("x / x",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtLemonTuesday35))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  margin:
                                                      getMargin(bottom: 123),
                                                  padding: getPadding(
                                                      left: 32,
                                                      top: 52,
                                                      right: 32,
                                                      bottom: 52),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup71),
                                                          fit: BoxFit.cover)),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    85),
                                                            margin: getMargin(
                                                                top: 6),
                                                            child: Text(
                                                                "Wait for everybody",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtLemonTuesday20))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  margin: getMargin(
                                                      left: 99,
                                                      top: 176,
                                                      right: 104),
                                                  padding: getPadding(
                                                      left: 36,
                                                      top: 31,
                                                      right: 36,
                                                      bottom: 31),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgCinematicket),
                                                          fit: BoxFit.cover)),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 51),
                                                            child: Text(
                                                                "INVITE",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanExtraBold20))
                                                      ])))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          margin: getMargin(top: 236),
                          padding: getPadding(
                              left: 44, top: 52, right: 44, bottom: 52),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup70),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(67),
                                    margin: getMargin(bottom: 12),
                                    child: Text("Send an invite",
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtLemonTuesday20))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 260),
                          child: Text("Click to copy",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLemonTuesday15))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: getVerticalSize(44),
                          width: getHorizontalSize(268),
                          margin: getMargin(top: 210),
                          decoration: AppDecoration.outlineBlack9003f,
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(42),
                                        width: getHorizontalSize(131),
                                        margin: getMargin(left: 2),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.pink600,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    getHorizontalSize(10)),
                                                bottomLeft: Radius.circular(
                                                    getHorizontalSize(10)))))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(42),
                                        width: getHorizontalSize(131),
                                        margin: getMargin(right: 2),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.cyan600,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    getHorizontalSize(10)),
                                                bottomLeft: Radius.circular(
                                                    getHorizontalSize(10)))))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding:
                                            getPadding(left: 77, right: 77),
                                        decoration: AppDecoration
                                            .outlineWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("XXXXX",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular35))
                                            ])))
                              ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: getHorizontalSize(177),
                          margin: getMargin(left: 17, top: 137),
                          child: Text("Almost got it",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtLemonTuesday30)))
                ]))));
  }

  onTapBtnArrowleftbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.roomPreferencesScreen);
  }

  onTapColumnstart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.movieScreen);
  }
}
