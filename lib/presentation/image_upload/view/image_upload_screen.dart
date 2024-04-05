import 'dart:io';
import 'package:codeland_app/core/image_constants.dart';
import 'package:codeland_app/presentation/image_upload/controller/image_upload_controller.dart';
import 'package:codeland_app/presentation/image_upload/view/image_preview.dart';
import 'package:codeland_app/presentation/login_screen/separate_widgets/appbar_widget.dart';
import 'package:codeland_app/utils/app_style.dart';
import 'package:codeland_app/utils/color_utils.dart';
import 'package:codeland_app/utils/common_strings.dart';
import 'package:codeland_app/utils/size_utils.dart';
import 'package:codeland_app/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class ImageUploadScreen extends StatelessWidget {
  ImageUploadScreen({super.key});

  // Assigning the retrieved instance of ImageUploadController to the variable imageUploadController for further usage.
  final imageUploadController = Get.find<ImageUploadController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: white,
            body: SingleChildScrollView(
              child: Padding(
                padding: getPadding(top: 50),
                child: Column(
                  children: [
                    // AppBarSection widget containing time and network icons
                    const AppBarSection(),
                    Text(
                      uploadImageLbl,
                      style: AppStyle.poppinsBlack16,
                    ),
                    SizedBox(
                      height: getSize(15),
                    ),
                    Obx(
                      () => imageUploadController.imageFile != null
                          ? Container(
                              height: size.height / 1.6,
                              width: size.width / 1.6,
                              decoration: const BoxDecoration(
                                  border: DashedBorder(
                                      dashLength: 10,
                                      top: BorderSide(color: black),
                                      bottom: BorderSide(color: black),
                                      right: BorderSide(color: black),
                                      left: BorderSide(color: black))),
                              child: Padding(
                                padding: getPadding(all: 8.0),
                                child: Image.file(
                                  File(imageUploadController.imageFile!.path),
                                  fit: BoxFit.cover,
                                ),
                              ))
                          : Container(
                              height: size.height / 1.7,
                              width: size.width / 1.2,
                              decoration: const BoxDecoration(
                                  border: DashedBorder(
                                      dashLength: 10,
                                      top: BorderSide(color: black),
                                      bottom: BorderSide(color: black),
                                      right: BorderSide(color: black),
                                      left: BorderSide(color: black))),
                              child: Center(
                                  child: Image.asset(ImageConstant.imagePng)),
                            ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: getMarginOrPadding(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            label: uploadLbl,
                            buttonHeight: getSize(40),
                            buttonWidth: getSize(140),
                            buttonColor: orange,
                            shadows: [
                              BoxShadow(
                                color: grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 4), // Offset in the y-axis direction
                              ),
                            ],
                            onTap: () async {
                              await imageUploadController
                                  .requestGalleryPermission();
                              imageUploadController.selectImage();
                            },
                            radiusCircle: 15.0,
                            textStyle: AppStyle.poppinsWhite15,
                          ),
                          CustomButton(
                            label: previewLbl,
                            buttonHeight: getSize(40),
                            buttonWidth: getSize(140),
                            buttonColor: lightGrey2,
                            shadows: [
                              BoxShadow(
                                color: grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 4), // Offset in the y-axis direction
                              ),
                            ],
                            onTap: () {
                              if (imageUploadController.imageFile != null) {
                                Get.to(() => ImagePreviewScreen(
                                    imageFile:
                                        imageUploadController.imageFile!));
                              } else {
                                Get.snackbar(
                                  'Error',
                                  'No image selected',
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: Colors.red,
                                  colorText: white,
                                );
                              }
                            },
                            radiusCircle: 15.0,
                            textStyle: AppStyle.poppinsBlack14,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}