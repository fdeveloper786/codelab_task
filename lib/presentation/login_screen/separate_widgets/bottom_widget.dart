import 'package:codeland_app/utils/app_style.dart';
import 'package:codeland_app/utils/common_strings.dart';
import 'package:codeland_app/utils/size_utils.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 15,
      child: Container(
        padding: getPadding(top: 10, bottom: 10),
        color: Colors.white,
        child: Center(
          child: Text(
            versionLbl,
            style: AppStyle.poppinsBlack12,
          ),
        ),
      ),
    );
  }
}
