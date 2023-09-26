import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:photographer/core/utils/assets.dart';

class CustomStaggerdGridView extends StatelessWidget {
  const CustomStaggerdGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 15,
            crossAxisSpacing: 25,
            children: [
              buildStaggeredGridTile(2, 2, 0),
              buildStaggeredGridTile(2, 1, 1),
              buildStaggeredGridTile(2, 1, 2),
              buildStaggeredGridTile(1, 1, 3),
              buildStaggeredGridTile(1, 1, 4),
              buildStaggeredGridTile(1, 1, 5),
              buildStaggeredGridTile(1, 1, 6),
              buildStaggeredGridTile(2, 2, 7),
              buildStaggeredGridTile(2, 1, 8),
              buildStaggeredGridTile(2, 1, 9),
            ],
          ),
        ),
      ),
    );
  }

  StaggeredGridTile buildStaggeredGridTile(int crossAxis, int mainAxis, int index) {
    return StaggeredGridTile.count(
      crossAxisCellCount:crossAxis ,
      mainAxisCellCount: mainAxis,
      child: InstaImageViewer(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image(
            image: Image.asset(
              AssetsData.portfolio.elementAt(index),
            ).image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      );
  }
}
