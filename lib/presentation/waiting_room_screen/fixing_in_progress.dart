import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/presentation/movie_screen/movie_screen.dart';
import 'package:movie_mixer/services/providers.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';

import '../../core/endpoints.dart';
import '../../models/room_model.dart';

class WaitingRoomScreen extends StatefulWidget {
  WaitingRoomScreen({Key? key, required this.roomId, required this.isHost})
      : super(key: key);
  final String roomId;
  final bool isHost;

  @override
  State<WaitingRoomScreen> createState() => _WaitingRoomScreenState();
}

class _WaitingRoomScreenState extends State<WaitingRoomScreen> {
  late String? _currentUserNumber;

  final ApiProvider provider = new ApiProvider();

  final connection = HubConnectionBuilder().withUrl(Endpoints.Socket).build();
  Future<void> handleOnJoin(List<Object?>? args) async {
    final value = await provider.fetchRoom(widget.roomId);
    setState(() {
      _currentUserNumber = value.usersInRoom.toString();
    });
  }

  Future<void> handleOnStart(List<Object?>? args) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MovieScreen(roomId: widget.roomId)));
  }

  @override
  void initState() {
    super.initState();
    connection.start()?.then((_) {
      connection.invoke('JoinRoom', args: [widget.roomId]);
      connection.on("onJoin", handleOnJoin);
      connection.on("onLeave", handleOnJoin);
      connection.on("onStart", handleOnStart);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowBack,
                              height: getVerticalSize(17),
                              width: getHorizontalSize(23),
                              onTap: () {
                                if (widget.isHost) {
                                  provider.deleteRoom(widget.roomId);
                                } else {
                                  provider.leaveRoom(widget.roomId);
                                }
                                Navigator.of(context).pop();
                              }),
                          Container(
                            height: getVerticalSize(560),
                            width: getHorizontalSize(335),
                            margin: getMargin(
                              top: 97,
                            ),
                            decoration: AppDecoration.purple.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder43),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // first column
                                  Container(
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Almost got it",
                                              style:
                                                  AppStyle.txtLemonTuesday30))),
                                  // second column
                                  Container(
                                      child: Column(
                                    children: [
                                      CopyableText(
                                        text: '${widget.roomId}',
                                      ),
                                      Text("Click to copy",
                                          style: AppStyle.txtLemonTuesday15),
                                      InviteContainer(widget.roomId)
                                    ],
                                  )),
                                  // third column
                                  Container(child: Center())
                                ]),
                          )
                        ])))));
  }
}
