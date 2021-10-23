import 'package:url_launcher/url_launcher.dart';

class Maputils {
  Maputils._();

  static Future<void> openMap(double Latitude, double Longitude) async {
    String googleMapurl =
        "https://www.google.com/maps/search/?api=1&query=$Latitude,$Longitude";
    if (await canLaunch(googleMapurl)) {
      await launch(googleMapurl);
    } else {
      throw 'Cant open';
    }
  }
}
