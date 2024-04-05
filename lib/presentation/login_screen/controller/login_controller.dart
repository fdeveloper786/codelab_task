import 'dart:developer';
import 'package:codeland_app/domain/app_routes.dart';
import 'package:codeland_app/domain/mixins.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

/// Define the LoginController class
class LoginController extends GetxController with FormFieldValidators {
  // Define global key for the form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Define text editing controllers for username and password
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Define RxString variables for username and password errors
  final usernameError = RxString('');
  final passwordError = RxString('');

  // Variable to control password visibility
  var passwordObscured = true.obs;

  // Override onInit function to initialize text field controllers
  @override
  void onInit() {
    super.onInit();
    // Initialize text field controllers and update UI
    usernameController.addListener(() {
      update();
    });
    passwordController.addListener(() {
      update();
    });
  }

  // Function to toggle password visibility
  void togglePasswordVisibility() {
    passwordObscured.value = !passwordObscured.value;
  }

  // Function to handle login action
  void login() {
    // Validate form fields
    if (formKey.currentState!.validate()) {
      // Perform login action
      log('Username : ${usernameController.text}');
      log('Password: ${passwordController.text}');
      Get.toNamed(AppRoutes.imageUploadScreen); // Navigate to image upload screen
    }
  }

  // Function to make a phone call
  Future<void> makePhoneCall(String phoneNumber) async {
    Uri url = Uri.parse('tel:$phoneNumber');
    if (await canLaunchUrl(url)) { // Check if the URL can be launched
      await launchUrl(url); // Launch the URL
    } else {
      throw 'Could not launch $url'; // Throw an error if the URL cannot be launched
    }
  }
}
