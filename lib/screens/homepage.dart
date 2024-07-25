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
    const MyBooking(),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: context.height,
          width: context.width,
          child: Obx(() => _screens[navigationController.selectedIndex.value])),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
