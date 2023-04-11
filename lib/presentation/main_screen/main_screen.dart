import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_image.dart';
import 'package:movie_mixer/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_mixer/presentation/main_screen/widgets/room_modal.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Collection> fetchCollection() async {
  final response =
      await http.get(Uri.parse('http://10.0.2.2:5039/api/MovieCollections'));

  if (response.statusCode == 200) {
    // return Collection.fromJson(jsonDecode(response.body));
    return Collection.fromJson(jsonDecode(response.body)[0]);
  } else {
    throw Exception('Failed to load collections');
  }
}

class Collection {
  final int id;
  final String title;
  final String description;
  final String imagePath;

  const Collection({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  factory Collection.fromJson(Map<String, dynamic> json) {
    return Collection(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imagePath: json['imagePath'],
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Future<Collection> futureCollection;

  @override
  void initState() {
    super.initState();
    futureCollection = fetchCollection();
  }

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
                                                      .imgArrowBack,
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
                                          RoomModal(),
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
                                // ImageCarousel(
                                //   imagePaths: [
                                //     'assets/images/img_poster_1.png',
                                //     'assets/images/img_poster_376x360.png',
                                //     'assets/images/img_poster_2.png',
                                //   ],
                                //   title: [
                                //     'The Shawshank Redemption',
                                //     'The Godfather',
                                //     'The Dark Knight'
                                //   ],
                                //   description: [
                                //     'Doremi',
                                //     'Doremi',
                                //     'Doremi',
                                //   ],
                                //   scrollDirection: Axis.horizontal,
                                //   itemsVisible: 3,
                                // ),

                                FutureBuilder<Collection>(
                                  future: futureCollection,
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return ImageCarousel(
                                        imagePaths: [
                                          snapshot.data!.imagePath,
                                        ],
                                        title: [
                                          snapshot.data!.title,
                                        ],
                                        description: [
                                          snapshot.data!.title,
                                        ],
                                        scrollDirection: Axis.horizontal,
                                        itemsVisible: 3,
                                      );
                                    } else if (snapshot.hasError) {
                                      return Text('${snapshot.error}',
                                          style:
                                              AppStyle.txtRobotoRomanRegular20);
                                    }

                                    // By default, show a loading spinner.
                                    return const CircularProgressIndicator();
                                  },
                                ),
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
