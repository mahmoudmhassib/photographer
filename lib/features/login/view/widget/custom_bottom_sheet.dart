import 'package:flutter/material.dart';
import 'package:photographer/core/utils/constants.dart';

import 'custom_list_tile.dart';

class CustomBottomSheet extends StatefulWidget {
  final String textListTileTop;
  final String textListTileBottom;
  final Function() onTapTop;
  final Function() onTapBottom;
  final Color textColorSheet;
  final String iconDataTop;
  final String iconDataBottom;

  const CustomBottomSheet(
      {Key? key,
      required this.textListTileTop,
      required this.textListTileBottom,
      required this.onTapTop,
      required this.onTapBottom,
      required this.textColorSheet,
        required this.iconDataTop,
      required this.iconDataBottom})
      : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: .2,
      child: Column(
        children: [
          CustomListTile(
            textTitle: widget.textListTileTop,
            iconLeading: widget.iconDataTop,
            onTap: widget.onTapTop,
            textColor: widget.textColorSheet,
          ),
          const Divider(
            color: kColorAppBar,
          ),
          CustomListTile(
            textTitle: widget.textListTileBottom,
            iconLeading: widget.iconDataBottom,
            onTap: widget.onTapBottom,
            textColor: widget.textColorSheet,
          ),
        ],
      ),
    );
  }
}
