import 'package:travel_agency/screens/homepage.dart';

import '../widgets/widgets_imports.dart';

dynamic routes = [
  GetPage(name: '/', page: () => HomePage()),
  GetPage(name: '/homescreen', page: () => HomeScreen()),
  GetPage(name: '/retrievebooking', page: () => const RetrieveBooking()),
  GetPage(name: '/mybooking', page: () => const MyBooking()),
  GetPage(name: '/blogpage', page: () => BlogPage()),
];
