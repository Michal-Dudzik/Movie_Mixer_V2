import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, AppRoutes.loginScreen);
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 15,
            right: 16,
            bottom: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgLogo328x328,
                height: getSize(
                  328,
                ),
                width: getSize(
                  328,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 184,
                ),
                child: Text(
                  "Powered by ",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanLight15,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgTMDB,
                height: getVerticalSize(
                  18,
                ),
                width: getHorizontalSize(
                  135,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
