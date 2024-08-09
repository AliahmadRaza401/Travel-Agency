import 'package:travel_agency/screens/bottom_nav_bar.dart';
import 'package:travel_agency/screens/bottom_nav_controller.dart';
import 'package:travel_agency/screens/chatscreen/view/chat_screen.dart';
import 'package:travel_agency/screens/settings.dart';

import '../widgets/widgets_imports.dart';

class HomePage extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  final List<Widget> _screens = [
    const HomeScreen(),
    RetrieveBooking(),
    ChatPage(),
    const Settings(),
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
