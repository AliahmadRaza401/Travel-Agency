import 'package:travel_agency/screens/bottom_nav_bar.dart';
import 'package:travel_agency/screens/bottom_nav_controller.dart';

import '../widgets/widgets_imports.dart';

class HomePage extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  final List<Widget> _screens = [
    HomeScreen(),
    RetrieveBooking(),
    BlogPage(),
    MyBooking(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _screens[navigationController.selectedIndex.value]),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
