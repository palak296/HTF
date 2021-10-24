import 'package:url_launcher/url_launcher.dart';

class Maputils {
  Maputils._();

  static void openMap() {
    String googleMapurl =
        "https://www.google.com/maps/search/?api=1&query=nearest car service center";
    //if (await canLaunch(googleMapurl)) {
    launch(googleMapurl);
    //} else {
    //  throw 'Cant open';
    //}
  }
}
