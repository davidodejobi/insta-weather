import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_daily/services/location.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Location location = Location();

  Future<dynamic> getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
