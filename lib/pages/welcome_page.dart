import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/widgets/button_widget.dart';
import 'package:movie_booking_app/widgets/title_text.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: PRIMARY_COLOR,
        child: Column(
          children: [
            WelcomeLogo(),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: EdgeInsets.symmetric(
                horizontal: MARGIN_MEDIUM_2,
                vertical: MARGIN_XXLARGE,
              ),
              child: Column(
                children: [
                  TitleText(
                    WELCOME_TITLE,
                    titleColor: Colors.white,
                  ),
                  SizedBox(height: MARGIN_MEDIUM),
                  Text(
                    WELCOME_TEXT,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: TEXT_REGULAR_2X,
                    ),
                  ),
                  Spacer(),
                  ButtonWidget(
                    WELCOME_BUTTON_TEXT,
                    isGhostBtn: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/welcome_logo.png",
            ),
          ),
        ],
      ),
    );
  }
}
