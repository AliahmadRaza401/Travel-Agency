import 'package:travel_agency/widgets/widgets_imports.dart';

class SeatingPlan extends StatelessWidget {
  SeatingPlan({super.key});
  final SeatController seatController = Get.put(SeatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(.06),
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              heightBox(.02),
              CustomText(
                  text: "Passenger Info",
                  textStyle: KTextStyles().normal(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      textColor: KColors.kBlue)),
              heightBox(.02),

              // GridView.builder(
              //   shrinkWrap: true,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 8,
              //   ),
              //   itemCount: seatController.seats.length,
              //   itemBuilder: (context, index) {
              //     Seat seat = seatController.seats[index];
              //     return GestureDetector(
              //       onTap: () {
              //         seatController.toggleSeatSelection(seat);
              //       },
              //       child: Container(
              //         margin: EdgeInsets.all(4),
              //         decoration: BoxDecoration(
              //           color: seat.isOccupied ? Colors.blue : Colors.white,
              //           border: Border.all(
              //             color: seat.isOccupied ? Colors.blue : Colors.green,
              //             width: 2,
              //           ),
              //         ),
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

enum SeatState {
  available,
  taken,
  sold,
  disabled,
}

class SeatStateModel {
  SeatState state;

  SeatStateModel({
    required this.state,
  });
}

class SeatController extends GetxController {
  var currentSeatsState = <SeatStateModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize seat states for 8x8 grid
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        currentSeatsState.add(SeatStateModel(state: SeatState.available));
      }
    }
  }

  void updateSeatState(int rowIndex, int colIndex, SeatState newState) {
    int index = rowIndex * 8 + colIndex;
    currentSeatsState[index].state = newState;
    update(); // Update the UI
  }
}
