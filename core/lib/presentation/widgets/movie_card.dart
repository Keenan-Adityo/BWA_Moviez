import 'package:core/core.dart';
import 'package:core/domain/entities/movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Movie item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 125.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            image: DecorationImage(
              image: AssetImage(item.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.title,
              style: kHeading3,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              item.genres,
              style: kSubtitle,
            ),
            const SizedBox(
              height: 20,
            ),
            RatingBar.builder(
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: kYellow,
              ),
              unratedColor: kLightGrey,
              itemSize: 18,
              initialRating: item.rating.toDouble(),
              itemCount: 5,
              ignoreGestures: true,
              onRatingUpdate: (rating) {},
            ),
          ],
        ),
      ],
    );
  }
}
