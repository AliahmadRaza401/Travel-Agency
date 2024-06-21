import 'package:travel_agency/screens/bottom_nav_bar.dart';

import '../widgets/widgets_imports.dart';

dynamic routes = [
  GetPage(name: '/', page: () => const BottomNavBar()),
  GetPage(name: '/homescreen', page: () => const HomeScreen()),
  GetPage(name: '/retrievebooking', page: () => const RetrieveBooking()),
  GetPage(name: '/mybooking', page: () => const MyBooking()),
  GetPage(name: '/blogpage', page: () => const BlogPage()),
];
