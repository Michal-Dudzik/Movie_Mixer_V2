import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:movie_mixer/core/app_export.dart';

class WaitingRoomScreen extends StatelessWidget {
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
                              svgPath: ImageConstant.imgArrowleft,
                              height: getVerticalSize(17),
                              width: getHorizontalSize(23),
                              margin: getMargin(left: 1),
                              onTap: () {
                                Navigator.of(context).pop();
                              }),
                          Container(
                              height: getVerticalSize(556),
                              width: getHorizontalSize(334),
                              margin: getMargin(top: 97, bottom: 5),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 7,
                                                top: 20,
                                                right: 7,
                                                bottom: 20),
                                            decoration: AppDecoration.purple
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder43),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 5),
                                                      child: Text(
                                                          "Almost got it",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLemonTuesday30)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  44),
                                                          width:
                                                              getHorizontalSize(
                                                                  248),
                                                          margin: getMargin(
                                                              top: 12),
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f1,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            44),
                                                                        width: getHorizontalSize(
                                                                            124),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.pink,
                                                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(15)), bottomLeft: Radius.circular(getHorizontalSize(15)))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            44),
                                                                        width: getHorizontalSize(
                                                                            124),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.cyan,
                                                                            borderRadius: BorderRadius.only(topRight: Radius.circular(getHorizontalSize(15)), bottomRight: Radius.circular(getHorizontalSize(15)))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        padding: getPadding(left: 87, right: 87),
                                                                        decoration: AppDecoration.outlineWhiteA7001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 1),
                                                                              child: Text("XXXXX", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular35))
                                                                        ])))
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 9,
                                                          top: 6,
                                                          bottom: 15),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            61),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  21),
                                                                          child: Text(
                                                                              "Click to copy",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtLemonTuesday15)),
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              262),
                                                                          width: getHorizontalSize(
                                                                              212),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  24),
                                                                          child: Stack(
                                                                              alignment: Alignment.topCenter,
                                                                              children: [
                                                                                Align(
                                                                                    alignment: Alignment.bottomRight,
                                                                                    child: Padding(
                                                                                        padding: getPadding(right: 23),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                                          Text("X", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular40),
                                                                                          Padding(padding: getPadding(left: 7, top: 1, bottom: 1), child: Text("/", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular37)),
                                                                                          Padding(padding: getPadding(left: 9), child: Text("X", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular40))
                                                                                        ]))),
                                                                                Align(
                                                                                    alignment: Alignment.topCenter,
                                                                                    child: Container(
                                                                                        height: getVerticalSize(239),
                                                                                        width: getHorizontalSize(212),
                                                                                        child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgArrow1, height: getVerticalSize(132), width: getHorizontalSize(65), alignment: Alignment.bottomLeft),
                                                                                          Align(alignment: Alignment.bottomLeft, child: Container(width: getHorizontalSize(85), margin: getMargin(left: 20, bottom: 39), child: Text("Wait for everybody", maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtLemonTuesday20))),
                                                                                          Align(
                                                                                              alignment: Alignment.topRight,
                                                                                              child: Container(
                                                                                                  padding: getPadding(left: 36, top: 31, right: 36, bottom: 31),
                                                                                                  decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgCinematicket), fit: BoxFit.cover)),
                                                                                                  child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                                    Padding(padding: getPadding(top: 51), child: Text("INVITE", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanExtraBold20))
                                                                                                  ])))
                                                                                        ])))
                                                                              ]))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 4,
                                                                        top: 6),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              132),
                                                                          width: getHorizontalSize(
                                                                              92),
                                                                          child: Stack(
                                                                              alignment: Alignment.topLeft,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgArrow1, height: getVerticalSize(132), width: getHorizontalSize(65), alignment: Alignment.centerRight),
                                                                                Align(alignment: Alignment.topLeft, child: Container(width: getHorizontalSize(67), margin: getMargin(top: 29), child: Text("Send an invite", maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtLemonTuesday20)))
                                                                              ])),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrow2,
                                                                          height: getVerticalSize(
                                                                              77),
                                                                          width: getHorizontalSize(
                                                                              40),
                                                                          margin: getMargin(
                                                                              left: 16,
                                                                              top: 154))
                                                                    ]))
                                                          ]))
                                                ]))),
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(248),
                                        text: "Start",
                                        variant:
                                            ButtonVariant.OutlineBlack9003f,
                                        fontStyle:
                                            ButtonFontStyle.RobotoRomanMedium20,
                                        onTap: () => onTapStart(context),
                                        alignment: Alignment.bottomCenter)
                                  ]))
                        ])))));
  }

  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.movieScreen);
  }
}
