import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_booking_app/resources/dimens.dart';
import 'package:movie_booking_app/resources/strings.dart';
import 'package:movie_booking_app/widgets/button_widget.dart';
import 'package:movie_booking_app/widgets/cast_profile.dart';
import 'package:movie_booking_app/widgets/movie_subheading.dart';
import 'package:movie_booking_app/widgets/movie_text.dart';
import 'package:movie_booking_app/widgets/title_text.dart';

class MovieDetailsPage extends StatelessWidget {
  List<String> genreList = [
    "Action",
    "Adventure",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              MovieDetailsSliverBarView(),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: MARGIN_MEDIUM_2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TrailerSectionView(genreList: genreList),
                          SizedBox(height: MARGIN_MEDIUM_2),
                          PlotSectionVIew(),
                        ],
                      ),
                    ),
                    SizedBox(height: MARGIN_MEDIUM_2),
                    CastSectionView(),
                    SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white54,
              padding: const EdgeInsets.symmetric(
                horizontal: MARGIN_MEDIUM_2,
                vertical: MARGIN_XLARGE,
              ),
              child: ButtonWidget(GET_YOUR_TICKET),
            ),
          ),
        ],
      ),
    );
  }
}

class PlotSectionVIew extends StatelessWidget {
  const PlotSectionVIew({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieSubheading(PLOST_SUMMARY),
        SizedBox(height: MARGIN_SMALL),
        MovieText(
          "Ace detective Harry Goodman goes mysteriously missing, prompting his 21-year-old son, Tim, to find out what happened. Aiding in the investigation is Harry's former Pokémon partner, wise-cracking,",
        ),
      ],
    );
  }
}

class CastSectionView extends StatelessWidget {
  const CastSectionView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: MovieSubheading(CAST),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        Container(
          height: CAST_PORFILE_SIZE,
          child: ListView(
            padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
            scrollDirection: Axis.horizontal,
            children: [
              CastProfile(),
              CastProfile(),
              CastProfile(),
              CastProfile(),
              CastProfile(),
              CastProfile(),
              CastProfile(),
              CastProfile(),
            ],
          ),
        ),
      ],
    );
  }
}

class TrailerSectionView extends StatelessWidget {
  const TrailerSectionView({
    this.genreList,
  });

  final List<String> genreList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Detactive Pikachu",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: TEXT_BIG),
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Row(
          children: [
            MovieText("1h 45m"),
            SizedBox(width: MARGIN_MEDIUM_2),
            RatingView(),
            SizedBox(width: MARGIN_MEDIUM_2),
            MovieText("IMDb 6.6")
          ],
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Row(
          children: genreList
              .map(
                (genr) => GenreChipView(genr),
              )
              .toList(),
        ),
      ],
    );
  }
}

class GenreChipView extends StatelessWidget {
  final String genreText;
  GenreChipView(this.genreText);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
          backgroundColor: Colors.transparent,
          label: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(genreText),
          ),
          shape: StadiumBorder(
              side: BorderSide(
            color: Colors.black12,
          )),
        ),
        SizedBox(width: MARGIN_MEDIUM_2),
      ],
    );
  }
}

class RatingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      direction: Axis.horizontal,
      initialRating: 5.0,
      itemBuilder: (BuildContext context, int index) {
        return Icon(
          Icons.star,
          color: Colors.amber,
        );
      },
      itemPadding: EdgeInsets.only(left: MARGIN_SMALL),
      itemSize: MARGIN_LARGE,
      onRatingUpdate: (rating) => print(rating),
    );
  }
}

class MovieDetailsSliverBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: MediaQuery.of(context).size.height * 0.35,
      flexibleSpace: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGFrQd3ez_nmjQhnH7F3vyJUbDogMKNqoU6nCd-7rJ3ZzgprZo",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: MARGIN_MEDIUM,
              top: MARGIN_XXLARGE,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.chevron_left,
                color: Colors.white,
                size: HOME_PAGE_ICON_SIZE,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.play_circle_outline_outlined,
              color: Colors.white,
              size: PLAY_ICON_SIZE,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: BORDER_RADIUS,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(BORDER_RADIUS),
                  topRight: Radius.circular(BORDER_RADIUS),
                ),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
