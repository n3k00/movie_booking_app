import 'package:flutter/material.dart';
import 'package:movie_booking_app/pages/combo_set_page.dart';
import 'package:movie_booking_app/pages/home_page.dart';
import 'package:movie_booking_app/pages/login_and_register_page.dart';
import 'package:movie_booking_app/pages/movie_choose_time_page.dart';
import 'package:movie_booking_app/pages/movie_details_page.dart';
import 'package:movie_booking_app/pages/payment_card.dart';
import 'package:movie_booking_app/pages/welcome_page.dart';
import 'package:movie_booking_app/resources/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaymentCardPage(),
    );
  }
}
