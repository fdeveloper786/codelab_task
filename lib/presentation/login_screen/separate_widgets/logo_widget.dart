import 'package:codeland_app/core/image_constants.dart';
import 'package:codeland_app/utils/app_style.dart';
import 'package:codeland_app/utils/common_strings.dart';
import 'package:codeland_app/utils/size_utils.dart';
import 'package:flutter/material.dart';


class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(ImageConstant.codelandLogoPng),
          const SizedBox(height: 10),
          Image.asset(ImageConstant.codelandTreePng),
          const SizedBox(height: 20),
          Text(
            biomedicalLbl,
            style: AppStyle.poppinsBlack20,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              hcfLbl,
              style: AppStyle.poppinsOrange15,
            ),
          ),
        ],
      ),
    );
  }
}
