import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class GreenText extends StatelessWidget {
  final String text;
  GreenText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: TEXT_REGULAR_3X,
        fontWeight: FontWeight.bold,
        color: GREEN_COLOR,
      ),
    );
  }
}
