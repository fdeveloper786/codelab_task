import 'package:codeland_app/core/image_constants.dart';
import 'package:codeland_app/presentation/splash_screen/controller/splash_controller.dart';
import 'package:codeland_app/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  // Access the SplashController using GetX's Get.find method
   final splashController = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orange,
      body:  Center(
        child: Image.asset(ImageConstant.treeLogoPng)
      ),
    );
  }
}
