import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';

class ButtonWidget extends StatelessWidget {
  final String btnText;
  final bool isGhostBtn;

  ButtonWidget(
    this.btnText, {
    this.isGhostBtn = false,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: Colors.red,
        side: isGhostBtn
            ? BorderSide(
                width: 2,
                color: Colors.white54,
              )
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        minimumSize: Size(
          MediaQuery.of(context).size.width,
          60,
        ),
        backgroundColor: isGhostBtn ? null : PRIMARY_COLOR,
      ),
      child: Text(
        btnText,
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
