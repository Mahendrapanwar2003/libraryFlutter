part of ui_library;

class MyImagePicker {
  static Future<File?> pickImage({
    bool pickImageFromGallery = false,
    bool wantCropper = false,
    required BuildContext context,
    Color color = Colors.blue,
  }) async {
    XFile? imagePicker = pickImageFromGallery
        ? await ImagePicker().pickImage(source: ImageSource.gallery)
        : await ImagePicker().pickImage(source: ImageSource.camera);
    if (imagePicker != null) {
      print("manish 1");
      if (wantCropper) {
        CroppedFile? cropImage = await ImageCropper().cropImage(
          sourcePath: imagePicker.path,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ],
          uiSettings: [
            AndroidUiSettings(
              toolbarColor: color,
              toolbarTitle: "Cropper",
              activeControlsWidgetColor: color,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false,
            ),
          ],
          compressQuality: 40,
        );
        if (cropImage != null) {
          return File(cropImage.path);
        } else {
          return File(imagePicker.path);
        }
      } else {
        return File(imagePicker.path);
      }
    } else {
      return null;
    }
  }
}
