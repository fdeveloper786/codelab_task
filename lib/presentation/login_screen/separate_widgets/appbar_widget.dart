import 'package:codeland_app/utils/app_style.dart';
import 'package:codeland_app/utils/common_strings.dart';
import 'package:codeland_app/widgets/icon_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(timeLbl, style: AppStyle.poppinsBlack13Bold),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconItem(icon: Icons.network_cell_rounded),
              SizedBox(width: 5),
              IconItem(icon: CupertinoIcons.wifi),
              SizedBox(width: 5),
              IconItem(icon: CupertinoIcons.battery_100),
            ],
          )
        ],
      ),
    );
  }
}