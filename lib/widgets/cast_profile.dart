import 'package:flutter/material.dart';
import 'package:movie_booking_app/resources/dimens.dart';

class CastProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MARGIN_LARGE),
      height: CAST_PORFILE_SIZE,
      width: CAST_PORFILE_SIZE,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU5ch-cyZfsalVLKhvcziOpwcYIupAag5kBk1azKYhoVEZFgbm",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
