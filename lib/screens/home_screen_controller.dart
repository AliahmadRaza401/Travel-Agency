import 'package:travel_agency/screens/home_screen_modal.dart';

import '../../../../widgets/widgets_imports.dart';

class HomeScreenController extends GetxController {
  final isLoading = true.obs;
  final isError = false.obs;

  RxList<Cities> travellingList = RxList<Cities>();
  RxList<Cities> filtercityList = RxList<Cities>();
  RxList<Cities> favoriteList = RxList<Cities>();

  final scrollController = ScrollController(initialScrollOffset: 0);

  filterCity(key) {
    filtercityList = travellingList
        .where((city) => city.title.toLowerCase().contains(key.toLowerCase()))
        .toList()
        .obs;
    update();

    log("filtercityList: ${filtercityList.length}");
  }

  getTravellingList() async {
    isLoading.value = true;
    isError.value = false;
    var apiResponse = await Apis.getAPI(
      apiRoute: Apis.travellingRoute,
      returnData: true,
    );
    if (apiResponse == 'error') {
      isLoading.value = false;
      isError.value = true;
    } else {
      travellingList.value =
          List<Cities>.from(apiResponse.map((e) => Cities.fromMap(e)));
      for (var city in travellingList) {
        city.isFavorite =
            favoriteList.any((favCity) => favCity.title == city.title);
        update();
      }
      isLoading.value = false;
      isError.value = false;
    }
  }

  void toggleFavorite(Cities city) {
    city.isFavorite = !city.isFavorite;

    if (city.isFavorite) {
      favoriteList.add(city);
      update();
    } else {
      favoriteList.removeWhere((c) => c.title == city.title);
      update();
    }

    saveFavorites();
  }

  Future<void> saveFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favoriteListJson =
        favoriteList.map((city) => jsonEncode(city.toMap())).toList();
    prefs.setStringList('favoriteCities', favoriteListJson);
    update();
  }

  Future<void> loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favoriteListJson = prefs.getStringList('favoriteCities');

    if (favoriteListJson != null) {
      favoriteList.value = favoriteListJson
          .map((json) => Cities.fromMap(jsonDecode(json)))
          .toList();

      for (var city in favoriteList) {
        city.isFavorite = true;
      }
      update();
    }
  }

  // @override
  // void onInit() async {
  //   await getTravellingList();
  //   super.onInit();
  // }
}
