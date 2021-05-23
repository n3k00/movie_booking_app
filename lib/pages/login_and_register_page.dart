import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/widgets/button_widget.dart';
import 'package:movie_booking_app/widgets/signin_and_login_button_widget.dart';
import 'package:movie_booking_app/widgets/title_text.dart';

class LoginAndRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
            horizontal: MARGIN_MEDIUM_2,
            vertical: MARGIN_XXLARGE,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(WELCOME_TITLE),
              SizedBox(height: MARGIN_MEDIUM),
              Text(
                LOGIN_WELCOME_TEXT,
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: TEXT_REGULAR_2X,
                ),
              ),
              SizedBox(height: MARGIN_LARGE),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TabBar(
                        onTap: null,
                        indicatorColor: PRIMARY_COLOR,
                        indicatorWeight: 5.0,
                        labelColor: PRIMARY_COLOR,
                        unselectedLabelColor: Colors.black,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: TEXT_REGULAR_3X,
                        ),
                        labelPadding: EdgeInsets.all(MARGIN_MEDIUM_2),
                        tabs: [
                          Text(LOGIN_TEXT),
                          Text(SIGN_IN_TEXT),
                        ],
                      ),
                      SizedBox(height: MARGIN_LARGE),
                      Expanded(
                        child: TabBarView(
                          children: [
                            LoginView(),
                            SignInView(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SingInTextFieldVIew(),
        Spacer(),
        SignInButtonsView(),
      ]),
    );
  }
}

class SignInButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SignInAndLoginButtonWidget(
            SIGN_IN_WITH_FACEBOOK,
            Image.asset(
              "assets/icons/facebook.png",
              width: 36,
              height: 36,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          SignInAndLoginButtonWidget(
            SIGN_IN_WITH_GOOGLE,
            Image.asset(
              "assets/icons/google.png",
              width: 36,
              height: 36,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          ButtonWidget(CONFIRM_TEXT),
        ],
      ),
    );
  }
}

class SingInTextFieldVIew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: NAME_TEXT,
            labelStyle: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: TEXT_REGULAR_3X,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: PHONE_NUMBER_TEXT,
            labelStyle: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: TEXT_REGULAR_3X,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        TextField(
          decoration: InputDecoration(
            labelText: EMAIL_TEXT,
            labelStyle: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: TEXT_REGULAR_3X,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: PASSWORD_TEXT,
            labelStyle: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: TEXT_REGULAR_3X,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          LoginTextFieldAndForgetTextView(),
          Spacer(),
          LoginButtonsView(),
        ],
      ),
    );
  }
}

class LoginButtonsView extends StatelessWidget {
  const LoginButtonsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SignInAndLoginButtonWidget(
            LOGIN_WITH_FACEBOOK,
            Image.asset(
              "assets/icons/facebook.png",
              width: 36,
              height: 36,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          SignInAndLoginButtonWidget(
            LOGIN_WITH_GOOGLE,
            Image.asset(
              "assets/icons/google.png",
              width: 36,
              height: 36,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          ButtonWidget(CONFIRM_TEXT),
        ],
      ),
    );
  }
}

class LoginTextFieldAndForgetTextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: EMAIL_TEXT,
            labelStyle: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: TEXT_REGULAR_3X,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: PASSWORD_TEXT,
            labelStyle: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: TEXT_REGULAR_3X,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black12,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MARGIN_MEDIUM_2,
        ),
        Text(
          LOGIN_FORGET_PASSWORD_TEXT,
          style: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: TEXT_REGULAR_2X,
          ),
        ),
      ],
    );
  }
}
