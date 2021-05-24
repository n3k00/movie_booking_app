import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class MovieSelectionTitle extends StatelessWidget {
  final String title;
  MovieSelectionTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
      ),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: TEXT_REGULAR_3X),
      ),
    );
  }
}
