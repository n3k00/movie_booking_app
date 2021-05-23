import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';

class SignInAndLoginButtonWidget extends StatelessWidget {
  final String btnText;
  final Image btnImage;

  SignInAndLoginButtonWidget(
    this.btnText,
    this.btnImage,
  );

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: Colors.red,
        side: BorderSide(
          width: 2,
          color: Colors.black12,
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
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
              child: btnImage,
            ),
          ),
          Align(
            child: Column(
              children: [
                SizedBox(height: MARGIN_SMALL),
                Text(
                  btnText,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: TEXT_REGULAR_3X,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      onPressed: null,
    );
  }
}
