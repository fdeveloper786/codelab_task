import 'package:codeland_app/presentation/image_upload/controller/image_upload_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageUploadController());
  }
}
