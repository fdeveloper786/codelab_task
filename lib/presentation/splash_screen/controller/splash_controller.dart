import 'package:codeland_app/domain/app_routes.dart';
import 'package:get/get.dart';


class SplashController extends GetxController {

  /// This method, onInit(), is called automatically when the controller is initialized.
  /// It overrides the default behavior defined in the superclass, and additional functionalities can be added here.
  /// In this case, it calls the navigateToLogin() method to navigate to the login screen after a delay.

  @override
  void onInit() {
    // Calling the superclass's onInit() method to ensure any necessary setup is performed.
    super.onInit();
    // Initiating the navigation to the login screen.
    navigateToLogin();
  }

  /// This method is responsible for navigating to the login screen after a delay.
  void navigateToLogin() {
    // Using Future.delayed() to introduce a delay of 2 seconds before navigating.
    Future.delayed(const Duration(seconds: 2), () {
      // Using Get.toNamed() to navigate to the login screen, identified by the route name 'AppRoutes.loginScreen'.
      Get.toNamed(AppRoutes.loginScreen);
    });
  }
}
