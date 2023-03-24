import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA70001:
        return ColorConstant.ghostWhite;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.ghostWhite;
      case ButtonVariant.OutlineBlack9003f_1:
        return ColorConstant.pink600;
      case ButtonVariant.FillCyan600:
        return ColorConstant.cyan600;
      case ButtonVariant.FillPink600:
        return ColorConstant.pink600;
      case ButtonVariant.OutlineWhiteA70001:
        return ColorConstant.pink600;
      case ButtonVariant.OutlineWhiteA70001_1:
        return ColorConstant.cyan600;
      case ButtonVariant.OutlineWhiteA70001_3:
        return ColorConstant.cyan600;
      case ButtonVariant.OutlineWhiteA70001_2:
        return ColorConstant.pink600;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA70001:
        return BorderSide(
          color: ColorConstant.ghostWhite,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA70001_1:
        return BorderSide(
          color: ColorConstant.ghostWhite,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA70001_3:
        return BorderSide(
          color: ColorConstant.ghostWhite,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA70001_2:
        return BorderSide(
          color: ColorConstant.ghostWhite,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineBlack9003f_1:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineWhiteA70001_3:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineWhiteA70001_2:
        return ColorConstant.black9003f;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case ButtonShape.CustomBorderTL10:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.CustomBorderLR10:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RobotoRomanMedium15:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.20,
          ),
        );
      case ButtonFontStyle.RobotoRomanMedium12:
        return TextStyle(
          color: ColorConstant.ghostWhite,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.RobotoRomanMedium12Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.RobotoRomanRegular15:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.20,
          ),
        );
      case ButtonFontStyle.RobotoRomanBold20:
        return TextStyle(
          color: ColorConstant.ghostWhite,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.20,
          ),
        );
      case ButtonFontStyle.RobotoRomanMedium18:
        return TextStyle(
          color: ColorConstant.ghostWhite,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.20,
          ),
        );
      case ButtonFontStyle.RobotoRomanBold18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.22,
          ),
        );
      case ButtonFontStyle.RobotoRomanBold15:
        return TextStyle(
          color: ColorConstant.ghostWhite,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.20,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  RoundedBorder15,
  CustomBorderTL10,
  CustomBorderLR10,
}

enum ButtonPadding {
  PaddingAll12,
  PaddingAll8,
  PaddingAll15,
  PaddingAll5,
}

enum ButtonVariant {
  FillWhiteA700,
  FillWhiteA70001,
  OutlineBlack9003f,
  OutlineBlack9003f_1,
  FillCyan600,
  FillPink600,
  OutlineWhiteA70001,
  OutlineWhiteA70001_1,
  OutlineWhiteA70001_3,
  OutlineWhiteA70001_2,
}

enum ButtonFontStyle {
  RobotoRomanRegular12,
  RobotoRomanMedium15,
  RobotoRomanMedium12,
  RobotoRomanMedium12Black900,
  RobotoRomanRegular15,
  RobotoRomanBold20,
  RobotoRomanMedium18,
  RobotoRomanBold18,
  RobotoRomanBold15,
}
