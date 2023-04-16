import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/core/endpoints.dart';
import 'package:movie_mixer/models/movie_list_model.dart';
import 'package:movie_mixer/models/movie_model.dart';
import 'package:signalr_netcore/signalr_client.dart';

import '../../services/providers.dart';

class AfterSelectionScreen extends StatefulWidget {
  AfterSelectionScreen({Key? key, required this.roomId}) : super(key: key);

  @override
  State<AfterSelectionScreen> createState() => _AfterSelectionScreenState();
  final String roomId;
  late bool isFinished = false;
}

class _AfterSelectionScreenState extends State<AfterSelectionScreen> {
  final connection = HubConnectionBuilder().withUrl(Endpoints.Socket).build();
  late ApiProvider provider = ApiProvider();

  @override
  void initState() {
    super.initState();
    connection.start()?.then((_) {
      connection.invoke('JoinRoom', args: [widget.roomId]);
      provider.fetchFinalMovieList(widget.roomId).then((value) {
        if (value?.id != "notready") {
          connection.invoke("ListReady", args: [widget.roomId]);
          setState(() {
            widget.isFinished = true;
          });
        } else {
          connection.on("onListReady", (data) {
            setState(() {
              widget.isFinished = true;
            });
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isFinished == false) {
      return Center(
          child: Stack(
        children: [
          Container(
            width: getHorizontalSize(1000),
            height: getVerticalSize(500),
            child: Text("Waiting for other players to finish"),
          ),
          CircularProgressIndicator(),
        ],
      ));
    } else {
      return FutureBuilder<MovieListModel?>(
        future: provider.fetchFinalMovieList(widget.roomId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final movies = snapshot.data!.movies;
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
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.maxFinite,
                        padding: getPadding(left: 13, right: 13),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: getVerticalSize(556),
                              width: getHorizontalSize(334),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      padding: getPadding(all: 22),
                                      decoration: AppDecoration.purple.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder43,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "People have spoken",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRomanBold20,
                                          ),
                                          SizedBox(height: 10),
                                          Expanded(
                                            child: ListView.builder(
                                              itemCount: movies!.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return MovieListItemWidget(
                                                  movie: movies[index],
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: getPadding(left: 40, right: 40, bottom: 105),
                          child: SizedBox(
                            height: getVerticalSize(40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomButton(
                                    height: getVerticalSize(40),
                                    text: "Try Again",
                                    margin: getMargin(right: 23),
                                    variant: ButtonVariant.OutlineWhiteA700_1,
                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle: ButtonFontStyle
                                        .RobotoRomanBold15WhiteA700,
                                    onTap: () => onTapTryagain(context),
                                  ),
                                ),
                                Expanded(
                                  child: CustomButton(
                                    height: getVerticalSize(40),
                                    text: "Done",
                                    margin: getMargin(left: 23),
                                    variant: ButtonVariant.OutlineWhiteA700_2,
                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle: ButtonFontStyle
                                        .RobotoRomanBold15WhiteA700,
                                    onTap: () {
                                      connection.invoke("LeaveRoom",
                                          args: [widget.roomId]);
                                      connection.stop();
                                      onTapDone(context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error loading collections');
          } else {
            return CircularProgressIndicator();
          }
        },
      );
    }
  }
}

onTapTryagain(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Sorry!"),
        content: Text("This feature is not implemented yet."),
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
}

onTapDone(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.mainScreen);
}
