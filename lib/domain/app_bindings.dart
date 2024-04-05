// bindings/app_bindings.dart

import 'package:codeland_app/presentation/image_upload/controller/image_upload_controller.dart';
import 'package:codeland_app/presentation/login_screen/controller/login_controller.dart';
import 'package:codeland_app/presentation/splash_screen/controller/splash_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override

  void dependencies() {
    // Registering SplashController as a lazy dependency.
    Get.lazyPut(() => SplashController());

    // Registering LoginController as a lazy dependency.
    Get.lazyPut(() => LoginController());

    // Registering ImageUploadController as a lazy dependency.
    Get.lazyPut(() => ImageUploadController());

    // Additional dependencies can be added here if needed.
  }
}
