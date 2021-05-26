import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/widgets/button_widget.dart';
import 'package:movie_booking_app/widgets/green_text.dart';
import 'package:movie_booking_app/widgets/movie_subheading.dart';
import 'package:movie_booking_app/widgets/movie_text.dart';
import 'package:movie_booking_app/widgets/title_text.dart';

class ComboSetPage extends StatelessWidget {
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
        padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComboSetSectionView(COMBO_SET_M, COMBO_SET_M_DESC, r"15$"),
              SizedBox(height: MARGIN_MEDIUM_3),
              ComboSetSectionView(COMBO_SET_L, COMBO_SET_L_DESC, r"18$"),
              SizedBox(height: MARGIN_MEDIUM_3),
              ComboSetSectionView(COMBO_FOR_2, COMBO_FOR_2_DESC, r"20$"),
              SizedBox(height: MARGIN_LARGE),
              PromoCodeSectionView(),
              SizedBox(height: MARGIN_MEDIUM_2),
              SubTotalView(),
              SizedBox(height: MARGIN_MEDIUM_2),
              PaymentMethodSectionView(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MARGIN_LARGE,
              ),
              child: ButtonWidget("Pay \$40.00"),
            ),
          ),
        ]),
      ),
    );
  }
}

class PaymentMethodSectionView extends StatelessWidget {
  const PaymentMethodSectionView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieSubheading(PAYMENT_METHOD),
        SizedBox(height: MARGIN_MEDIUM_2),
        PaymentMethodSectionVIew(
          paymentIcon: Icons.credit_card,
          paymentTitle: CREDIT_CARD,
          paymentText: CARD_TYPE,
        ),
        SizedBox(height: MARGIN_MEDIUM),
        PaymentMethodSectionVIew(
          paymentIcon: Icons.credit_card,
          paymentTitle: INTERNET_BANKING,
          paymentText: CARD_TYPE,
        ),
        SizedBox(height: MARGIN_MEDIUM),
        PaymentMethodSectionVIew(
          paymentIcon: Icons.account_balance_wallet_outlined,
          paymentTitle: E_WALLET,
          paymentText: PAYPAL,
        ),
      ],
    );
  }
}

class PaymentMethodSectionVIew extends StatelessWidget {
  final IconData paymentIcon;
  final String paymentTitle;
  final String paymentText;
  const PaymentMethodSectionVIew({
    this.paymentIcon,
    this.paymentTitle,
    this.paymentText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          paymentIcon,
          size: HOME_PAGE_ICON_SIZE,
          color: Colors.black54,
        ),
        SizedBox(width: MARGIN_LARGE),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComboTitleView(paymentTitle),
            ComboTextView(comboText: paymentText)
          ],
        ),
      ],
    );
  }
}

class SubTotalView extends StatelessWidget {
  const SubTotalView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GreenText(SUB_TOTAl),
        GreenText("40\$"),
      ],
    );
  }
}

class PromoCodeSectionView extends StatelessWidget {
  const PromoCodeSectionView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Enter promo code",
            hintStyle: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: TEXT_REGULAR_3X,
                color: Colors.black45),
          ),
        ),
        SizedBox(height: MARGIN_SMALL),
        Row(
          children: [
            ComboTextView(
              comboText: ANY_PROMO_CODE,
            ),
            SizedBox(width: MARGIN_SMALL),
            Text(
              GET_IT_NOW,
              style: TextStyle(
                fontSize: TEXT_REGULAR_2X2,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ComboSetSectionView extends StatelessWidget {
  final String comboTitle;
  final String comboText;
  final String comboPrice;

  ComboSetSectionView(this.comboTitle, this.comboText, this.comboPrice);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ComboSetView(comboTitle, comboText),
        Spacer(),
        Container(
          child: Column(
            children: [
              ComboTitleView(comboPrice),
              SizedBox(height: MARGIN_MEDIUM),
              Row(
                children: [
                  DecreaseComboSetButtonView(),
                  ComboSetNumberView(),
                  IncreaseComboSetButtonView(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IncreaseComboSetButtonView extends StatelessWidget {
  const IncreaseComboSetButtonView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MARGIN_XLARGE,
      width: MARGIN_XLARGE,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(COMBO_SET_BUTTON_RADIUS),
          bottomRight: Radius.circular(COMBO_SET_BUTTON_RADIUS),
        ),
        border: Border.all(
          color: Colors.black26,
          width: 1,
        ),
      ),
      child: Center(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ComboSetNumberView extends StatelessWidget {
  const ComboSetNumberView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MARGIN_XLARGE,
      width: MARGIN_XLARGE,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.black26,
            width: 1,
          ),
        ),
      ),
      child: Center(
          child: Text(
        "0",
        style: TextStyle(fontSize: TEXT_REGULAR_3X2),
      )),
    );
  }
}

class DecreaseComboSetButtonView extends StatelessWidget {
  const DecreaseComboSetButtonView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MARGIN_XLARGE,
      width: MARGIN_XLARGE,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(COMBO_SET_BUTTON_RADIUS),
          bottomLeft: Radius.circular(COMBO_SET_BUTTON_RADIUS),
        ),
        border: Border.all(
          color: Colors.black26,
          width: 1,
        ),
      ),
      child: Center(
        child: Icon(Icons.remove),
      ),
    );
  }
}

class ComboSetView extends StatelessWidget {
  final String comboTitle;
  final String comboText;

  ComboSetView(this.comboTitle, this.comboText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.62,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ComboTitleView(comboTitle),
          SizedBox(height: MARGIN_SMALL),
          ComboTextView(comboText: comboText),
        ],
      ),
    );
  }
}

class ComboTextView extends StatelessWidget {
  const ComboTextView({
    Key key,
    @required this.comboText,
  });

  final String comboText;

  @override
  Widget build(BuildContext context) {
    return Text(
      comboText,
      style: TextStyle(
        fontSize: TEXT_REGULAR_2X2,
        color: Colors.black38,
      ),
    );
  }
}

class ComboTitleView extends StatelessWidget {
  const ComboTitleView(
    this.comboTitle,
  );

  final String comboTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      comboTitle,
      style: TextStyle(
        fontSize: TEXT_REGULAR_3X,
        color: Colors.black87,
      ),
    );
  }
}
