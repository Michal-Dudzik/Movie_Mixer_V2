import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths;
  final Axis scrollDirection;
  final int itemsVisible;
  final double spacing;

  const ImageCarousel({
    Key? key,
    required this.imagePaths,
    this.scrollDirection = Axis.horizontal,
    this.itemsVisible = 3,
    this.spacing = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width / itemsVisible;
    final itemHeight = itemWidth * 1.5;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: scrollDirection == Axis.horizontal ? itemHeight : null,
        width: scrollDirection == Axis.vertical ? itemWidth : null,
        child: ListView.separated(
          itemCount: imagePaths.length,
          scrollDirection: scrollDirection,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: scrollDirection == Axis.horizontal ? itemHeight : null,
              width: scrollDirection == Axis.vertical ? itemWidth : null,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: imagePaths[index],
                    width: itemWidth,
                    radius: BorderRadius.circular(10),
                  ),
                  SizedBox(
                    width: spacing,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            width: scrollDirection == Axis.horizontal ? spacing : null,
            height: scrollDirection == Axis.vertical ? spacing : null,
          ),
        ),
      ),
    );
  }
}
