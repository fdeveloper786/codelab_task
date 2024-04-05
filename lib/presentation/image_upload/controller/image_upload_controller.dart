import 'dart:developer';
import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

/// Define the ImageUploadController class
class ImageUploadController extends GetxController {
  // Define Rx variable for holding the image file
  final Rx<File?> _imageFile = Rx<File?>(null);

  // Getter method to access the image file
  File? get imageFile => _imageFile.value;

  /// Method of Gallery Request
  Future<void> requestGalleryPermission() async {
    // Request permission to access storage
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage
    ].request();

    // Log the permission status
    log("Storage permission status: ${statuses[Permission.storage]}");
  }


  /// Function to select an image from the gallery
  Future<void> selectImage() async {
    // Create an instance of ImagePicker
    final picker = ImagePicker();

    // Pick an image from the gallery
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    // Check if an image is picked
    if (pickedFile != null) {
      // Set the picked image file to the _imageFile variable
      _imageFile.value = File(pickedFile.path);
    }
  }
}