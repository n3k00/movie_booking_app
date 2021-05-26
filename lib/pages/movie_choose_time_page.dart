import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/widgets/button_widget.dart';

class MovieChooseTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        elevation: 0,
        leading: Icon(
          Icons.chevron_left,
          color: Colors.white,
          size: HOME_PAGE_ICON_SIZE,
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MovieChooseDateView(),
                    ChooseItemGridSectionView(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: MARGIN_MEDIUM_2, vertical: MARGIN_XLARGE),
                child: ButtonWidget("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChooseItemGridSectionView extends StatelessWidget {
  const ChooseItemGridSectionView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MARGIN_MEDIUM_2,
        left: MARGIN_MEDIUM_2,
        right: MARGIN_MEDIUM_2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChooseItmeGridView(),
          ChooseItmeGridView(),
          ChooseItmeGridView(),
        ],
      ),
    );
  }
}

class ChooseItmeGridView extends StatelessWidget {
  const ChooseItmeGridView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Available In",
          style: TextStyle(
              color: Colors.black,
              fontSize: TEXT_REGULAR_3X,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        Container(
          height: 120,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: false,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2.5,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: MARGIN_MEDIUM_2,
                  right: MARGIN_MEDIUM_2,
                  top: MARGIN_MEDIUM,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MARGIN_SMALL),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text("2D"),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MovieChooseDateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      height: MOVIE_TIME_DATE_LIST_HEIGHT,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: MARGIN_MEDIUM_2,
        ),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(
                "Wed",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: TEXT_REGULAR_3X,
                ),
              ),
              SizedBox(height: MARGIN_MEDIUM),
              Text(
                "10",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: TEXT_REGULAR_3X,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: MARGIN_MEDIUM_2);
        },
      ),
    );
  }
}
