import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude = 25.578773;
  late double longitude = 91.893257;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
