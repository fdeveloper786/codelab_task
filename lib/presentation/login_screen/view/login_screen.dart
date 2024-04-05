import 'package:codeland_app/presentation/login_screen/controller/login_controller.dart';
import 'package:codeland_app/presentation/login_screen/separate_widgets/appbar_widget.dart';
import 'package:codeland_app/presentation/login_screen/separate_widgets/bottom_widget.dart';
import 'package:codeland_app/presentation/login_screen/separate_widgets/login_form_widget.dart';
import 'package:codeland_app/presentation/login_screen/separate_widgets/logo_widget.dart';
import 'package:codeland_app/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

// Assigning the retrieved instance of LoginController to the variable loginController for further usage.
  final loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: white,
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // AppBarSection widget containing time and network icons
                    const AppBarSection(),
                    // LogoSection widget containing the logo and text
                    const LogoSection(),
                    // Login form section
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 25, right: 25, bottom: 10),
                      // LoginFormSection widget for handling login form inputs
                      child: LoginFormSection(loginController: loginController),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // BottomSection widget displaying the version label at the bottom of the screen
        const BottomSection(),
      ],
    );
  }
}
