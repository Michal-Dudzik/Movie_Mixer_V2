import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get txtFillWhiteA70001 => BoxDecoration(
        color: ColorConstant.ghostWhite,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration();
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: ColorConstant.ghostWhite,
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA70026,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            3,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA700b2 => BoxDecoration(
        color: ColorConstant.blueGray900,
        border: Border.all(
          color: ColorConstant.whiteA700B2,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray90002 => BoxDecoration(
        color: ColorConstant.gray90002,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: ColorConstant.gray90001,
      );
  static BoxDecoration get outlineWhiteA70001 => BoxDecoration(
        color: ColorConstant.cyan600,
        border: Border(
          left: BorderSide(
            color: ColorConstant.ghostWhite,
            width: getHorizontalSize(
              1,
            ),
          ),
          right: BorderSide(
            color: ColorConstant.ghostWhite,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius roundedBorder57 = BorderRadius.circular(
    getHorizontalSize(
      57,
    ),
  );

  static BorderRadius roundedBorder43 = BorderRadius.circular(
    getHorizontalSize(
      43,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
