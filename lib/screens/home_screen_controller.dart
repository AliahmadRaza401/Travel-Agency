import 'package:travel_agency/screens/home_screen_modal.dart';

import '../../../../widgets/widgets_imports.dart';

class HomeScreenController extends GetxController {
  final isLoading = true.obs;
  final isError = false.obs;

  RxList<Cities> travellingList = RxList<Cities>();
  RxList<Cities> filtercityList = RxList<Cities>();

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
      isLoading.value = false;
      isError.value = false;
    }
  }

  @override
  void onInit() async {
    await getTravellingList();
    super.onInit();
  }
}
