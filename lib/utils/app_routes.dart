import 'package:travel_agency/screens/bookings.dart';
import 'package:travel_agency/screens/flight/view/contact_details.dart';
import 'package:travel_agency/screens/flight/view/flight_booking_detail.dart';
import 'package:travel_agency/screens/flight/view/flights_home.dart';
import 'package:travel_agency/screens/flight/view/passcode.dart';
import 'package:travel_agency/screens/flight/view/passenger_info.dart';
import 'package:travel_agency/screens/flight/view/payment_details.dart';
import 'package:travel_agency/screens/flight/view/payment_successful.dart';
import 'package:travel_agency/screens/flight/view/search_flights.dart';
import 'package:travel_agency/screens/flight/view/seating_plan.dart';
import 'package:travel_agency/screens/flight/view/transaction_details.dart';
import 'package:travel_agency/screens/homepage.dart';

import '../widgets/widgets_imports.dart';

dynamic routes = [
  GetPage(name: '/', page: () => HomePage()),
  GetPage(name: '/homescreen', page: () => HomeScreen()),
  GetPage(name: '/retrievebooking', page: () => RetrieveBooking()),
  GetPage(name: '/mybooking', page: () => const MyBooking()),
  GetPage(name: '/blogpage', page: () => BlogPage()),
  GetPage(name: '/bookings', page: () => const Bookings()),
  // FLIGHTS //
  GetPage(name: '/flightshome', page: () => FlightsHome()),
  GetPage(name: '/searchflights', page: () => const SearchFlights()),
  GetPage(
      name: '/flightbookingdetails', page: () => const FlightBookingDetail()),
  GetPage(name: '/contactdetails', page: () => ContactDetails()),
  GetPage(name: '/passengerinfo', page: () => PassengerInfo()),
  GetPage(name: '/paymentdetails', page: () => PaymentDetails()),
  GetPage(name: '/passcode', page: () => Passcode()),
  GetPage(name: '/paymentsuccessful', page: () => const PaymentSuccessful()),
  GetPage(name: '/transaction', page: () => const TransactionDetails()),
  GetPage(name: '/seatingplan', page: () => SeatingPlan()),
];
