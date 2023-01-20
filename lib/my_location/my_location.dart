part of ui_library;

/*
    <uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
    <uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION"/>
*/

/*
   in case of Permission Denied Forever
	     <uses-permission android:name="android.permission.QUERY_ALL_PACKAGES" />

*/
class MyLocation {
  static Future<Map<String, dynamic>?> getCurrentLocation() async {
    if (await MyCommonMethods.internetConnectionCheckerMethod()) {
      Map<String, dynamic> addressDataMap = {};
      LocationData? myLocation;
      String error;
      Location location = Location();
      bool serviceEnabled;
      PermissionStatus permissionGranted;

      print("alltestPossible:::::::1");
      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        print("alltestPossible:::::::2");
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          print("alltestPossible:::::::3");
          return null;
        }
      }
      print("alltestPossible:::::::4");

      permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted == PermissionStatus.deniedForever) {
          print("isWorking");
          try {            print("datadatadatadatadatadatadat::::::::::::::::::");

          await SystemSettings.app();
            print("datadatadatadatadatadatadat::::::::::::::::::");
          } catch (e) {
            print("datadatadatadatadatadatadat::::::::::::::::::");
          }
        }
        print("datadatadatadatadatadatadat::::::::::::::::::");

        if (permissionGranted != PermissionStatus.granted) {
          return null;
        }
      }
      print("alltestPossible:::::::7");

      try {
        print("alltestPossible:::::::8");
        myLocation = await location.getLocation();
      } on PlatformException catch (e) {
        print("alltestPossible:::::::9");
        debugPrint("error::::::::::::${e}");

        if (e.code == 'PERMISSION_DENIED') {
          error = 'please grant permission';
        }
        if (e.code == 'PERMISSION_DENIED_NEVER_ASK') {
          error = 'permission denied- please enable it from app settings';
        }
        return null;
      }

      print("alltestPossible:::::::10");
      if (myLocation.latitude != null && myLocation.longitude != null) {
        print("alltestPossible:::::::11");
        final coordinates =
            Coordinates(myLocation.latitude, myLocation.longitude);
        final LocatitonGeocoder geocoder =
            LocatitonGeocoder(MyCommonMethods.apiKey);
        List<Address> addresses =
            await geocoder.findAddressesFromCoordinates(coordinates);
        if (addresses.isNotEmpty) {
          Address addressData = addresses.first;

          addressDataMap = {
            MyAddressKeyConstant.countryCode: addressData.countryCode ?? "",
            /*IN*/
            MyAddressKeyConstant.countryName: addressData.countryName ?? "",
            MyAddressKeyConstant.state: addressData.adminArea ?? "",
            MyAddressKeyConstant.subState: addressData.subAdminArea ?? "",
            MyAddressKeyConstant.addressDetail: addressData.addressLine ?? "",
            MyAddressKeyConstant.subAddressDetail: addressData.featureName ?? "",
            MyAddressKeyConstant.city: addressData.locality ?? "",
            MyAddressKeyConstant.area: addressData.subLocality ?? "",
            MyAddressKeyConstant.pinCode: addressData.postalCode ?? "",
            MyAddressKeyConstant.subArea: addressData.thoroughfare ?? "",
            MyAddressKeyConstant.latitude: myLocation.latitude ?? "",
            MyAddressKeyConstant.longitude: myLocation.longitude ?? "",
          };
        } else {
          return null;
        }
      } else {
        return null;
      }
    } else {
      return null;
    }

    return null;
  }
}

class MyAddressKeyConstant {
  static String countryCode = "countryCode";
  static String countryName = "countryName";
  static String state = "state";
  static String subState = "subState";
  static String addressDetail = "addressDetail";
  static String subAddressDetail = "subAddressDetail";
  static String city = "city";
  static String area = "area";
  static String pinCode = "pinCode";
  static String subArea = "subArea";
  static String latitude = "latitude";
  static String longitude = "longitude";
}
