import 'package:get/get.dart';
import 'package:weather/data/models/weather.dart';
import 'package:weather/data/services/storage/repository.dart';
import 'package:weather/widgets/enum.dart';

class HomeController extends GetxController {
  Rx<Weather> weathers = Weather().obs;
  final HomeRepository _homeRepository = HomeRepository();
  Rx<StateApi> weatherStatus = StateApi.loading.obs;
  @override
  void onInit() {
    getWeather();
    super.onInit();
  }

  Future<void> getWeather() async {
    // loading
    weatherStatus.value = StateApi.loading;
    try {
      var responseData = await _homeRepository.getWeather();
      weathers.value = responseData;
      update();
      // users.isEmpty
      //     ? userStatus.value = StateApi.empty
      //     : userStatus.value = StateApi.success;
      // empty or success
    } catch (e) {
      // error
      weatherStatus.value = StateApi.error;
      print('Error fetching products: $e');
    }
  }
}
