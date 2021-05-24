import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/colors.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/viewItems/movie_view.dart';
import 'package:movie_booking_app/widgets/movie_selction_title.dart';
import 'package:movie_booking_app/widgets/title_text.dart';

class HomePage extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: HOME_PAGE_ICON_SIZE,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: MARGIN_MEDIUM_2),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: HOME_PAGE_ICON_SIZE,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          color: PRIMARY_COLOR,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: MARGIN_MEDIUM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileView(),
              SizedBox(height: MARGIN_MEDIUM_2),
              MovieSectionView(NOW_SHOWING),
              MovieSectionView(COMING_SOON),
            ],
          ),
        ),
      ),
    );
  }
}

class MovieSectionView extends StatelessWidget {
  final String title;
  MovieSectionView(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieSelectionTitle(title),
        SizedBox(height: MARGIN_MEDIUM_2),
        Container(
          height: MOVIE_LIST_VIEW_HEITH,
          child: ListView.builder(
            padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return MovieView();
            },
          ),
        ),
      ],
    );
  }
}

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Row(
        children: [
          Container(
            width: MARGIN_XXLARGE,
            height: MARGIN_XXLARGE,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn.dribbble.com/users/2364329/screenshots/5930135/aa.jpg?compress=1&resize=800x600"),
              ),
            ),
          ),
          SizedBox(width: MARGIN_LARGE),
          TitleText("Hi John!")
        ],
      ),
    );
  }
}
