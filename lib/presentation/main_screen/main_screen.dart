import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_image.dart';
import 'package:movie_mixer/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_mixer/widgets/room_modal.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray,
            body: Container(
                height: size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: size.height,
                          width: getHorizontalSize(359),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPagebackground,
                                height: getVerticalSize(800),
                                width: getHorizontalSize(360),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(top: 17),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(17),
                                              leadingWidth: 38,
                                              leading: AppbarImage(
                                                  height: getVerticalSize(17),
                                                  width: getHorizontalSize(23),
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  margin: getMargin(left: 15),
                                                  onTap: () =>
                                                      Navigator.of(context)
                                                          .pop()),
                                              actions: [
                                                AppbarImage(
                                                    onTap: () =>
                                                        onTapMenu(context),
                                                    height: getVerticalSize(17),
                                                    width:
                                                        getHorizontalSize(23),
                                                    svgPath:
                                                        ImageConstant.imgMenu,
                                                    margin: getMargin(
                                                        left: 14, right: 14))
                                              ]),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPremiumBaner,
                                              height: getVerticalSize(110),
                                              width: getHorizontalSize(359),
                                              margin: getMargin(top: 17)),
                                          Padding(
                                              padding: getPadding(top: 85),
                                              child: Text(
                                                  "Need something to watch?",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular22)),
                                          AddTodoButton(),
                                          Spacer(),
                                        ])))
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(bottom: 100),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 10),
                                    child: Text("Check featured collections",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanRegular20)),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Container(
                                      height: getVerticalSize(230),
                                      width: getHorizontalSize(360),
                                      child: ListView.separated(
                                        itemCount: 4,
                                        itemBuilder: (BuildContext context,
                                                int index) =>
                                            Container(
                                                height: getVerticalSize(230),
                                                width: getHorizontalSize(360),
                                                child: ListView.separated(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: 4,
                                                    separatorBuilder: (BuildContext
                                                                context,
                                                            int index) =>
                                                        SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    10)),
                                                    itemBuilder: (BuildContext
                                                                context,
                                                            int index) =>
                                                        CustomImageView(
                                                          imagePath: index == 0
                                                              ? ImageConstant
                                                                  .imgPoster
                                                              : index == 1
                                                                  ? ImageConstant
                                                                      .imgPoster216x144
                                                                  : index == 2
                                                                      ? ImageConstant
                                                                          .imgPoster1
                                                                      : ImageConstant
                                                                          .imgPoster216x21,
                                                          width: 144,
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      10)),
                                                        ))),
                                        separatorBuilder:
                                            (BuildContext context, int index) =>
                                                const Divider(),
                                      ),
                                    ))
                              ]))),
                  GestureDetector(
                    onTap: () => launch('https://raidshadowlegends.com/'),
                    child: Container(
                      height: getVerticalSize(80),
                      width: getHorizontalSize(360),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRaidSh,
                            height: getVerticalSize(80),
                            width: getHorizontalSize(360),
                            alignment: Alignment.center,
                          ),
                          Positioned(
                            top: getVerticalSize(5),
                            right: getHorizontalSize(5),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgClose,
                              height: getSize(6),
                              width: getSize(6),
                              alignment: Alignment.topRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]))));
  }

  onTapMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountPreferencesScreen);
  }

  onDiscover(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.roomModal);
  }
}
