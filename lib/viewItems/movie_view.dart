import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class MovieView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MARGIN_MEDIUM_2),
      width: MOVIE_ITEM_WITH,
      child: Column(
        children: [
          MovieImageView(),
          SizedBox(height: MARGIN_MEDIUM_2),
          Text(
            "Detective Pikachu",
            style: TextStyle(
              fontSize: TEXT_REGULAR,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: MARGIN_SMALL),
          Text(
            "Mystery/Adventure . 1h 45m",
            style: TextStyle(
              color: Colors.black38,
              fontSize: TEXT_SMALL,
            ),
          ),
        ],
      ),
    );
  }
}

class MovieImageView extends StatelessWidget {
  const MovieImageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MOVIE_ITEM_IMAGE_HEIGHT,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(MOVIE_IMAGE_BORDER_RADIUS)),
        image: DecorationImage(
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGFrQd3ez_nmjQhnH7F3vyJUbDogMKNqoU6nCd-7rJ3ZzgprZo",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
