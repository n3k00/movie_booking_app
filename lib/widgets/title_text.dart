import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class TitleText extends StatelessWidget {
  final String title;
  final Color titleColor;

  TitleText(this.title, {this.titleColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: titleColor,
          fontWeight: FontWeight.w600,
          fontSize: TEXT_HEADING_X2),
    );
  }
}
