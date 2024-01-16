import 'package:http/http.dart' as http ;


class WeatherApiClient {
  static const baseUrl = 'https://www.metaweather.com/api';

  Future<int> getLocationId(String city) async {
    final locationUrl = Uri.parse('$baseUrl/location/search/?query=$city');
    final locationRes = await http.get(locationUrl);
  }
}