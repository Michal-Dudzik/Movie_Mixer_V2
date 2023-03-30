// import 'package:flutter/cupertino.dart';
// ignore_for_file: unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

class RoomPreferencesScreen extends StatefulWidget {
  @override
  State<RoomPreferencesScreen> createState() => _RoomPreferencesScreenState();
}

class _RoomPreferencesScreenState extends State<RoomPreferencesScreen> {
  int _selectedValue = 10;
  List<String> _selectedGenres = [];

  void _onGenresChanged(List<String> genres) {
    setState(() {
      _selectedGenres = genres;
    });
  }

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
                              height: getVerticalSize(577),
                              width: getHorizontalSize(334),
                              margin: getMargin(top: 76, bottom: 5),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 536,
                                        padding: getPadding(
                                            left: 43,
                                            top: 49,
                                            right: 43,
                                            bottom: 49),
                                        decoration: AppDecoration.purple
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder43),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SingleChildScrollView(
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  children: [
                                                    GenrePicker(
                                                      onGenresChanged:
                                                          (selectedGenres) {
                                                        setState(() {
                                                          _selectedGenres =
                                                              selectedGenres;
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("List size:",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular22),
                                                  Container(
                                                      height:
                                                          getVerticalSize(80),
                                                      width:
                                                          getHorizontalSize(60),
                                                      child: NumberPicker(
                                                          selectedValue:
                                                              _selectedValue,
                                                          onValueChanged:
                                                              (int value) {
                                                            setState(() {
                                                              _selectedValue =
                                                                  value;
                                                            });
                                                          })),
                                                ],
                                              ),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 21,
                                                      top: 28,
                                                      right: 21),
                                                  child: Row(
                                                      // TODO: When the user clicks on the "Advanced options" button, If user has premium account the "Advanced options" section should be expanded, otherwise the user will get a popup to upgrade to premium account.
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLockLocked,
                                                            height:
                                                                getVerticalSize(
                                                                    35),
                                                            width:
                                                                getHorizontalSize(
                                                                    26),
                                                            alignment: Alignment
                                                                .center),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 17,
                                                                top: 7,
                                                                bottom: 3),
                                                            child: Text(
                                                                "Advanced options",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanBold20)),
                                                      ])),
                                            ]))),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 43, vertical: 12),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CheckboxWidget(),
                                        Spacer(),
                                        CustomButton(
                                          height: getVerticalSize(40),
                                          text: "Open Room",
                                          variant:
                                              ButtonVariant.OutlineBlack9003f,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRomanMedium20,
                                          onTap: () => onTapOpenroom(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ])),
                        ])))));
  }

  onTapOpenroom(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.waitingRoomScreen);
  }
}
