import 'package:codeland_app/presentation/image_upload/view/image_upload_screen.dart';
import 'package:codeland_app/presentation/login_screen/binding/login_binding.dart';
import 'package:codeland_app/presentation/login_screen/view/login_screen.dart';
import 'package:codeland_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:codeland_app/presentation/splash_screen/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String initialRoute = "/initialRoute";
  static const String splashScreen = "/splash_screen";
  static const String loginScreen = "/login_screen";
  static const String imageUploadScreen = "/image_upload_screen";


  static List<GetPage> pages = [
    GetPage(name: initialRoute, page: () => SplashScreen(),
        bindings: [SplashBinding()]
    ),
    GetPage(name: splashScreen, page: () => SplashScreen(),
      bindings: [SplashBinding()]
    ),
    GetPage(name: loginScreen, page: () => LoginScreen(),
        bindings: [LoginBinding()]
    ),
    GetPage(name: imageUploadScreen, page: () => ImageUploadScreen(),
        bindings: [LoginBinding()]
    ),
  ];
}