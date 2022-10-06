part of ui_library;

class MyHttp {
  static Future<http.Response> getMethod(
      {required String url, Map<String, String>? token}) async {
    if (kDebugMode) print("CALLING:: $url");
    http.Response response = await http.get(
      Uri.parse(url),
      headers: token,
    );
    if (kDebugMode) print("CALLING:: ${response.body}");
    return response;
  }

  static Future<http.Response> postMethod(
      {required String url,
      required Map<String, dynamic> bodyParams,
      Map<String, String>? token}) async {
    if (kDebugMode) print("CALLING:: $url");
    http.Response response =
        await http.post(Uri.parse(url), body: bodyParams, headers: token);
    if (kDebugMode) print("CALLING:: ${response.body}");
    return response;
  }

  static Future<http.Response> multipartRequest(
      {File? image,
      required String url,
      required String multipartRequestType /* POST or GET */,
      required Map<String, dynamic> bodyParams,
      required String token,
      required String userProfileImageKey}) async {
    http.Response res;
    if (image != null) {
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
      return res;
    } else {
      res = await http.post(
        Uri.parse(url),
        body: bodyParams,
        headers: {"authorization": token},
      );
      return res;
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
}
