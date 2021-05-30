import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/viewItems/card_view.dart';
import 'package:movie_booking_app/widgets/button_widget.dart';
import 'package:movie_booking_app/widgets/green_text.dart';
import 'package:movie_booking_app/widgets/movie_subheading.dart';
import 'package:movie_booking_app/widgets/movie_text.dart';
import 'package:movie_booking_app/widgets/title_text.dart';

class PaymentCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.chevron_left,
          size: HOME_PAGE_ICON_SIZE,
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                    child: PaymentAmountSectionView(),
                  ),
                  SizedBox(height: MARGIN_LARGE),
                  CardSwiperView(),
                  SizedBox(height: MARGIN_LARGE),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MARGIN_MEDIUM_2,
                    ),
                    child: AddNewCardSectionView(),
                  ),
                  SizedBox(height: MARGIN_LARGE),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: MARGIN_MEDIUM_2,
                    ),
                    child: AddNewCardView(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MARGIN_MEDIUM_2,
                      vertical: MARGIN_XLARGE,
                    ),
                    child: ButtonWidget(CONFIRM),
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

class AddNewCardView extends StatelessWidget {
  const AddNewCardView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.add_circle_rounded,
          color: GREEN_COLOR,
          size: HOME_PAGE_ICON_SIZE,
        ),
        SizedBox(width: MARGIN_MEDIUM_2),
        GreenText(ADD_NEW_CARD)
      ],
    );
  }
}

class AddNewCardSectionView extends StatelessWidget {
  const AddNewCardSectionView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardNumberInputView(),
        SizedBox(height: MARGIN_MEDIUM_2),
        CardHolderInputView(),
        SizedBox(height: MARGIN_MEDIUM_2),
        Row(
          children: [
            ExpirationDateView(),
            SizedBox(width: MARGIN_MEDIUM_2),
            CVCView(),
          ],
        ),
      ],
    );
  }
}

class CVCView extends StatelessWidget {
  const CVCView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelText(CVC),
          TextField(
            style: TextStyle(
              fontSize: TEXT_REGULAR_2X2,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: MARGIN_MEDIUM_2,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black45),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ExpirationDateView extends StatelessWidget {
  const ExpirationDateView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelText(EXPIRATION_DATE),
          TextField(
            style: TextStyle(
              fontSize: TEXT_REGULAR_2X2,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: MARGIN_MEDIUM_2,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black45),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardHolderInputView extends StatelessWidget {
  const CardHolderInputView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(CARD_HOLDER),
        TextField(
          style: TextStyle(
            fontSize: TEXT_REGULAR_2X2,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              left: MARGIN_MEDIUM_2,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black45),
            ),
          ),
        )
      ],
    );
  }
}

class CardNumberInputView extends StatelessWidget {
  const CardNumberInputView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(CARD_NUMBER),
        SizedBox(height: MARGIN_SMALL),
        TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(
            fontSize: TEXT_REGULAR_2X2,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              left: MARGIN_MEDIUM_2,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
          ),
        ),
      ],
    );
  }
}

class CardSwiperView extends StatelessWidget {
  const CardSwiperView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: CARD_HEIGHT,
      child: Swiper(
        itemCount: 3,
        index: 2,
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (context, index) {
          return CardView();
        },
      ),
    );
  }
}

class PaymentAmountSectionView extends StatelessWidget {
  const PaymentAmountSectionView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(PAYMENT_AMOUNT),
        SizedBox(height: MARGIN_MEDIUM),
        Text(
          r"$ 926.21",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: PAYMNET_PRICE_SIZE,
          ),
        ),
      ],
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;

  LabelText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.grey,
        fontSize: TEXT_REGULAR_3X,
      ),
    );
  }
}
