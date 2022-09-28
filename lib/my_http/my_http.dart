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
}
