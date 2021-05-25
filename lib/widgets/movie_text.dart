import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class MovieText extends StatelessWidget {
  final String text;
  MovieText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.w400,
        fontSize: TEXT_REGULAR_3X,
      ),
    );
  }
}
