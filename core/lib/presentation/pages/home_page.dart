import 'package:core/core.dart';
import 'package:core/domain/entities/movies.dart';
import 'package:core/presentation/pages/search_page.dart';
import 'package:core/presentation/widgets/movie_card.dart';
import 'package:core/presentation/widgets/movie_highlight_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Moviez',
                          style: kHeading1,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Watch much easier',
                          style: kSubtitle,
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SearchPage.routeName);
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 279,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: highlight.length,
                  itemBuilder: (context, index) {
                    final item = highlight[index];
                    return Row(
                      children: [
                        (index == 0)
                            ? const SizedBox(
                                width: 24,
                              )
                            : const SizedBox(),
                        MovieHighlightCard(item: item),
                        const SizedBox(
                          width: 24,
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, bottom: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'From Disney',
                      style: kHeading2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: fromDisney.length,
                      itemBuilder: (context, index) {
                        final item = fromDisney[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: MovieCard(item: item),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
