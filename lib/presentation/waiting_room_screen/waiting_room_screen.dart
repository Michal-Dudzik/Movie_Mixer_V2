import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/presentation/movie_screen/movie_screen.dart';
import 'package:movie_mixer/services/providers.dart';

const _currentUserNumber = "?";
const _expectedUserNumber = "?";

class WaitingRoomScreen extends StatelessWidget {
  WaitingRoomScreen({Key? key, required this.roomId}) : super(key: key);
  final String roomId;
  final ApiProvider provider = new ApiProvider();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.gray,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPagebackground),
                        fit: BoxFit.cover)),
                child: Container(
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
                              onTap: () {
                                //TODO: if the user is not the host then provider.leaveRoom(roomId); should be called
                                provider.deleteRoom(roomId);
                                Navigator.of(context).pop();
                              }),
                          Container(
                              height: getVerticalSize(556),
                              width: getHorizontalSize(334),
                              margin: getMargin(
                                top: 97,
                              ),
                              child:
                                  Stack(alignment: Alignment.center, children: [
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
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder43),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 10),
                                                  child: Text("Almost got it",
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLemonTuesday30)),
                                              Center(
                                                  child: CopyableText(
                                                text: '$roomId',
                                              )),
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
                                                            padding: getPadding(
                                                                bottom: 61),
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
                                                                          style:
                                                                              AppStyle.txtLemonTuesday15)),
                                                                  Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              262),
                                                                      width: getHorizontalSize(
                                                                          212),
                                                                      margin: getMargin(
                                                                          top:
                                                                              24),
                                                                      child: Stack(
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          children: [
                                                                            Align(
                                                                              alignment: Alignment.bottomRight,
                                                                              child: Padding(
                                                                                padding: EdgeInsets.only(right: 23),
                                                                                child: Text(
                                                                                  "$_currentUserNumber / $_expectedUserNumber",
                                                                                  style: AppStyle.txtRobotoRomanRegular40,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                                alignment: Alignment.topCenter,
                                                                                child: Container(
                                                                                    height: getVerticalSize(240),
                                                                                    width: getHorizontalSize(212),
                                                                                    child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgArrow2, height: getVerticalSize(142), width: getHorizontalSize(65), alignment: Alignment.bottomLeft),
                                                                                      Align(alignment: Alignment.bottomLeft, child: Container(width: getHorizontalSize(85), margin: getMargin(left: 20, bottom: 55), child: Text("Wait for everybody", style: AppStyle.txtLemonTuesday20))),
                                                                                      Align(alignment: Alignment.topRight, child: InviteContainer(roomId))
                                                                                    ])))
                                                                          ]))
                                                                ])),
                                                        Column(children: [
                                                          Stack(children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            15),
                                                                child: CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgArrow1,
                                                                    height:
                                                                        getVerticalSize(
                                                                            140),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            65))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        73),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            29),
                                                                child: Text(
                                                                    "Send an invite",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtLemonTuesday20))
                                                          ]),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgArrow3,
                                                              height:
                                                                  getVerticalSize(
                                                                      83),
                                                              width:
                                                                  getHorizontalSize(
                                                                      40),
                                                              margin: getMargin(
                                                                  left: 10,
                                                                  top: 150))
                                                        ])
                                                      ]))
                                            ]))),
                                CustomButton(
                                    //TODO: if the user is not the host then this button shouldn't be shown
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(248),
                                    text: "Start",
                                    variant: ButtonVariant.OutlineBlack9003f,
                                    fontStyle:
                                        ButtonFontStyle.RobotoRomanMedium20,
                                    onTap: () async {
                                      bool started =
                                          await provider.startRoom(roomId);
                                      if (!started) {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Not enough users"),
                                              content: Text(
                                                  "Not enough users joined the room to start. Please wait for more users to join the room."),
                                              actions: [
                                                TextButton(
                                                  child: Text("OK"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MovieScreen(
                                                        roomId: roomId)));
                                      }
                                    },
                                    alignment: Alignment.bottomCenter)
                              ]))
                        ])))));
  }
}
