import 'package:core/core.dart';
import 'package:core/domain/entities/movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieHighlightCard extends StatelessWidget {
  const MovieHighlightCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Movie item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage(item.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                ],
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
        )
      ],
    );
  }
}
