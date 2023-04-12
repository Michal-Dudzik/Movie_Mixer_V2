import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/models/movie_collection_model.dart';
import 'package:movie_mixer/widgets/app_bar/appbar_image.dart';
import 'package:movie_mixer/widgets/app_bar/custom_app_bar.dart';
import 'package:movie_mixer/presentation/main_screen/widgets/room_modal.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import '../../services/providers.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ApiProvider provider = ApiProvider();
  late Future<List<MovieCollectionModel>> futureCollection;

  @override
  void initState() {
    super.initState();

    futureCollection = provider.fetchCollection();
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
                                //     'https://i.pinimg.com/736x/f2/74/a6/f274a668751e54f62b97a19bc6ce1c2e.jpg',
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

                                FutureBuilder<List<MovieCollectionModel>>(
                                  future: provider.fetchCollection(),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      final collections = snapshot.data!;
                                      return ImageCarousel(
                                        imagePaths: collections
                                            .map((c) => c.imagePath!)
                                            .toList(),
                                        title: collections
                                            .map((c) => c.title!)
                                            .toList(),
                                        description: collections
                                            .map((c) => c.description!)
                                            .toList(),
                                        scrollDirection: Axis.horizontal,
                                        itemsVisible: 3,
                                      );
                                    } else if (snapshot.hasError) {
                                      return Text('Error loading collections');
                                    } else {
                                      return CircularProgressIndicator();
                                    }
                                  },
                                )
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
