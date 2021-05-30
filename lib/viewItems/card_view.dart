import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            COMBO_SET_BUTTON_RADIUS,
          ),
        ),
        color: CARD_COLOR,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MARGIN_LARGE,
          vertical: MARGIN_MEDIUM,
        ),
        child: Column(
          children: [
            VisaAndMoreView(),
            Spacer(),
            CardNumberView(),
            Spacer(),
            CardHolderAndEpriresView(),
            SizedBox(height: MARGIN_MEDIUM),
            NameAndExpDateView(),
            SizedBox(height: MARGIN_MEDIUM),
          ],
        ),
      ),
    );
  }
}

class CardNumberView extends StatelessWidget {
  const CardNumberView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardNumberText(),
        Spacer(),
        CardNumberText(),
        Spacer(),
        CardNumberText(),
        Spacer(),
        CardNumberText(lastNumber: "8014"),
      ],
    );
  }
}

class CardNumberText extends StatelessWidget {
  final String lastNumber;
  CardNumberText({this.lastNumber = "* * * *"});

  @override
  Widget build(BuildContext context) {
    return Text(
      lastNumber,
      style: TextStyle(color: Colors.white, fontSize: TEXT_HEADING_X1),
    );
  }
}

class CardHolderAndEpriresView extends StatelessWidget {
  const CardHolderAndEpriresView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          CARD_HOLDER_UPPER,
          style: TextStyle(
            fontSize: TEXT_REGULAR_2X,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        Spacer(),
        Text(
          EXPIRES,
          style: TextStyle(
            fontSize: TEXT_REGULAR_2X,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class NameAndExpDateView extends StatelessWidget {
  const NameAndExpDateView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Lily Johnson",
          style: TextStyle(
            fontSize: TEXT_REGULAR_3X2,
            color: Colors.white,
          ),
        ),
        Spacer(),
        Text(
          "08/21",
          style: TextStyle(
            fontSize: TEXT_REGULAR_3X2,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class VisaAndMoreView extends StatelessWidget {
  const VisaAndMoreView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "VISA",
          style: TextStyle(
              color: Colors.white,
              fontSize: TEXT_HEADING_X1,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        Spacer(),
        Icon(
          Icons.more_horiz_outlined,
          color: Colors.white,
          size: TEXT_BIG,
        ),
      ],
    );
  }
}
