import 'package:weather/data/models/weather.dart';
import 'package:weather/data/network/api/api_url.dart';
import 'package:weather/data/network/api/dio_client.dart';

class HomeRepository {
  Future<Weather> getWeather() async {
    try {
      var response = await Api().get(ApiUrl.getWeather);
      print(response.data);
      var responseData = Weather.fromJson(response.data);

      return responseData;
    } catch (e) {
      print('Error fetching products: $e');
      rethrow;
    }
  }
}
