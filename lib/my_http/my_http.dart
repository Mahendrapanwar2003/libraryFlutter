part of ui_library;

class MyHttp {
  static Future<http.Response?> getMethod(
      {required String url,
      Map<String, String>? token,
      required BuildContext context}) async {
    if (kDebugMode) print("CALLING:: $url");
    if (await MyCommonMethods.internetConnectionCheckerMethod()) {
      try {
        http.Response? response = await http.get(
          Uri.parse(url),
          headers: token,
        );
        if (kDebugMode) print("CALLING:: ${response.body}");
        return response;
      } catch (e) {
        MyCommonMethods.serverDownShowSnackBar(context: context);
        return null;
      }
    } else {
      MyCommonMethods.networkConnectionShowSnackBar(context: context);
      return null;
    }
  }

  static Future<http.Response?> postMethod(
      {required String url,
      required Map<String, dynamic> bodyParams,
      Map<String, String>? token,
      required BuildContext context}) async {
    if (kDebugMode) print("CALLING:: $url");
    if (kDebugMode) print("BODYPARAMS:: $bodyParams");
    if (await MyCommonMethods.internetConnectionCheckerMethod()) {
      try {
        http.Response? response =
            await http.post(Uri.parse(url), body: bodyParams, headers: token);
        if (kDebugMode) print("CALLING:: ${response.body}");
        return response;
      } catch (e) {
        if (kDebugMode) print("ERROR:: $e");
        MyCommonMethods.serverDownShowSnackBar(context: context);
        return null;
      }
    } else {
      MyCommonMethods.networkConnectionShowSnackBar(context: context);
      return null;
    }
  }

  static Future<http.Response?> multipartRequest(
      {File? image,
      required String url,
      required String multipartRequestType /* POST or GET */,
      required Map<String, dynamic> bodyParams,
      required String token,
      required String userProfileImageKey,
      required BuildContext context}) async {
    if (kDebugMode) print("CALLING:: $url");
    if (kDebugMode) print("BODYPARAMS:: $bodyParams");
    http.Response? res;
    if (await MyCommonMethods.internetConnectionCheckerMethod()) {
      if (image != null) {
        try {
          http.MultipartRequest multipartRequest =
              http.MultipartRequest(multipartRequestType, Uri.parse(url));
          bodyParams.forEach((key, value) {
            multipartRequest.fields[key] = value;
          });
          multipartRequest.headers['Authorization'] = token;
          multipartRequest.files.add(getUserProfileImageFile(
              image: image, userProfileImageKey: userProfileImageKey));
          http.StreamedResponse response = await multipartRequest.send();
          res = await http.Response.fromStream(response);
        } catch (e) {
          if (kDebugMode) print("ERROR:: $e");
          MyCommonMethods.serverDownShowSnackBar(context: context);
          return null;
        }
        // ignore: unnecessary_null_comparison
        if (res != null) {
          if (kDebugMode) print("CALLING:: ${res.body}");
          return res;
        } else {
          return null;
        }
      } else {
        try {
          res = await http.post(
            Uri.parse(url),
            body: bodyParams,
            headers: {"authorization": token},
          );
        } catch (e) {
          if (kDebugMode) print("ERROR:: $e");
          MyCommonMethods.serverDownShowSnackBar(context: context);
          return null;
        }
        // ignore: unnecessary_null_comparison
        if (res != null) {
          if (kDebugMode) print("CALLING:: ${res.body}");
          return res;
        } else {
          return null;
        }
      }
    } else {
      MyCommonMethods.networkConnectionShowSnackBar(context: context);
      return null;
    }
  }

  static http.MultipartFile getUserProfileImageFile(
      {File? image, required String userProfileImageKey}) {
    return http.MultipartFile.fromBytes(
      userProfileImageKey,
      image!.readAsBytesSync(),
      filename: image.uri.pathSegments.last,
    );
  }

  static Future<http.Response?> getMethodForParams(
      {Map<String, String>? authorization,
      required Map<String, dynamic> queryParameters,
      required String baseUri,
      required String endPointUri,
      required BuildContext context}) async {
    if (await MyCommonMethods.internetConnectionCheckerMethod()) {
      try {
        Uri uri = Uri.http(baseUri, endPointUri, queryParameters);
        if (kDebugMode) print("CALLING:: $uri");
        http.Response? response = await http.get(uri, headers: authorization);
        if (kDebugMode) print("CALLING:: ${response.body}");
        // ignore: unnecessary_null_comparison
        if (response != null) {
          return response;
        } else {
          return null;
        }
      } catch (e) {
        if (kDebugMode) print("ERROR:: $e");
        MyCommonMethods.serverDownShowSnackBar(context: context);
        return null;
      }
    } else {
      MyCommonMethods.networkConnectionShowSnackBar(context: context);
      return null;
    }
  }

  static Future<http.Response?> multipartRequestForSignUp(
      {required Map<String, File> imageMap,
      required String url,
      required String multipartRequestType /* POST or GET */,
      required Map<String, dynamic> bodyParams,
      required BuildContext context}) async {
    if (kDebugMode) print("CALLING:: $url");
    if (kDebugMode) print("BODYPARAMS:: $bodyParams");
    http.Response? res;
    if (await MyCommonMethods.internetConnectionCheckerMethod()) {
      if (imageMap != null) {
        try {
          http.MultipartRequest multipartRequest =
              http.MultipartRequest(multipartRequestType, Uri.parse(url));
          bodyParams.forEach((key, value) {
            multipartRequest.fields[key] = value;
          });
          imageMap.forEach((key, value) {
            multipartRequest.files.add(getUserProfileImageFile(
                image: value, userProfileImageKey: key));
          });
          http.StreamedResponse response = await multipartRequest.send();
          res = await http.Response.fromStream(response);
        } catch (e) {
          if (kDebugMode) print("ERROR:: $e");
          MyCommonMethods.serverDownShowSnackBar(context: context);
          return null;
        }
        // ignore: unnecessary_null_comparison
        if (res != null) {
          if (kDebugMode) print("CALLING:: ${res.body}");
          return res;
        } else {
          return null;
        }
      } else {
        try {
          res = await http.post(
            Uri.parse(url),
            body: bodyParams,
          );
        } catch (e) {
          if (kDebugMode) print("ERROR:: $e");
          MyCommonMethods.serverDownShowSnackBar(context: context);
          return null;
        }
        // ignore: unnecessary_null_comparison
        if (res != null) {
          if (kDebugMode) print("CALLING:: ${res.body}");
          return res;
        } else {
          return null;
        }
      }
    } else {
      MyCommonMethods.networkConnectionShowSnackBar(context: context);
      return null;
    }
  }

  static uploadMultipleImages() {}
/*
  static Future<http.Response?> uploadMultipleImage(
      {required List<XFile> imageList,
      String? requestType,
      required String url,
      required String token,
      required String imageListKey}) async {
    http.Response? response;
    if (imageList.isNotEmpty) {
      for (int i = 0; i < imageList.length; i++) {
        http.MultipartRequest multipartRequest =
            http.MultipartRequest('POST', Uri.parse(url));
        multipartRequest.headers['Authorization'] = token;
        multipartRequest.files.add(http.MultipartFile.fromBytes(
            imageListKey, File(imageList[i].path).readAsBytesSync(),
            filename: imageList[i].path.split("/").last));
        http.StreamedResponse streamedResponse = await multipartRequest.send();
        response = await http.Response.fromStream(streamedResponse);
        print(imageList[i].path);
        return response;
      }
    }
    return null;
  }*/


  static Future<http.Response?> uploadMultipleImage(
      {
        required List<XFile> imageList,
        required String url,
        required String imageKey,
        required String multipartRequestType /* POST or GET */,
        required Map<String, dynamic> bodyParams,
        required String token,
        required BuildContext context}) async {
    if (kDebugMode) print("CALLING:: $url");
    if (kDebugMode) print("BODYPARAMS:: $bodyParams");
    if (kDebugMode) print("imageList:: $imageList");
    http.Response? res;
    if (await MyCommonMethods.internetConnectionCheckerMethod()) {
      if (imageList.isNotEmpty) {
        try {
            http.MultipartRequest multipartRequest =
            http.MultipartRequest(multipartRequestType, Uri.parse(url));
            bodyParams.forEach((key, value) {
              multipartRequest.fields[key] = value;
              if (kDebugMode) print("multipartRequest.fields[key]:: $multipartRequest.fields[key]");
            });
            multipartRequest.headers['Authorization'] = token;
            for (var element in imageList) {
              multipartRequest.files.add(getUserProfileImageFile(
                  image: File(element.path), userProfileImageKey: imageKey));
              if (kDebugMode) print("File(element.path):: ${File(element.path)}");
              if (kDebugMode) print("File(element.path):: ${element.path}");
            }
            http.StreamedResponse response = await multipartRequest.send();
            res = await http.Response.fromStream(response);
        } catch (e) {
          if (kDebugMode) print("ERROR:: $e");
          MyCommonMethods.serverDownShowSnackBar(context: context);
          return null;
        }
        // ignore: unnecessary_null_comparison
        if (res != null) {
          if (kDebugMode) print("CALLING:: ${res.body}");
          return res;
        } else {
          return null;
        }
      } else {
        try {
          res = await http.post(
            Uri.parse(url),
            body: bodyParams,
            headers: {"authorization": token},
          );
        } catch (e) {
          if (kDebugMode) print("ERROR:: $e");
          MyCommonMethods.serverDownShowSnackBar(context: context);
          return null;
        }
        // ignore: unnecessary_null_comparison
        if (res != null) {
          if (kDebugMode) print("CALLING:: ${res.body}");
          return res;
        } else {
          return null;
        }
      }
    } else {
      MyCommonMethods.networkConnectionShowSnackBar(context: context);
      return null;
    }
  }
  }

/*  static Future<http.Response?> uploadMultipleImage(
      {required List<XFile> imageList,
        String? requestType,
        required String url,
        required String token,
        required String imageListKey}) async {
    http.Response? response;
    if (imageList.isNotEmpty) {
      for (int i = 0; i < imageList.length; i++) {
        http.MultipartRequest multipartRequest =
        http.MultipartRequest('POST', Uri.parse(url));
        multipartRequest.headers['Authorization'] = token;
        multipartRequest.files.add(http.MultipartFile.fromBytes(
            imageListKey, File(imageList[i].path).readAsBytesSync(),
            filename: imageList[i].path.split("/").last));
        http.StreamedResponse streamedResponse = await multipartRequest.send();
        response = await http.Response.fromStream(streamedResponse);
        print(imageList[i].path);
        return response;
      }
    }
    return null;
  }*/

