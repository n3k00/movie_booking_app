import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: Colors.red,
        side: BorderSide(
          width: 1,
          color: Colors.white54,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        minimumSize: Size(
          MediaQuery.of(context).size.width,
          60,
        ),
      ),
      child: Text(
        WELCOME_BUTTON_TEXT,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: TEXT_REGULAR_3X,
        ),
      ),
      onPressed: null,
    );
  }
}
