import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class MovieSubheading extends StatelessWidget {
  final String text;
  MovieSubheading(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: MOVIE_SUBHEADING_SIZE,
      ),
    );
  }
}
