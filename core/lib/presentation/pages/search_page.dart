import 'package:core/core.dart';
import 'package:core/presentation/bloc/search/search_bloc.dart';
import 'package:core/presentation/widgets/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/search_page';
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 38),
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        onChanged: (query) {
                          context.read<SearchBloc>().add(OnSearch(query));
                        },
                        style: kSubtitle.copyWith(color: Colors.black),
                        cursorHeight: 21,
                        decoration: const InputDecoration(
                          hintText: 'Search here',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                          border: InputBorder.none,
                        ),
                        textInputAction: TextInputAction.search,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Search Result ',
                        style: kHeading3,
                        children: [
                          TextSpan(
                            text: '(${state.result.length})',
                            style:
                                kHeading3.copyWith(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.result.length,
                      itemBuilder: (context, index) {
                        final item = state.result[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: MovieCard(item: item),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Material(
                        borderRadius: BorderRadius.circular(37),
                        elevation: 10,
                        child: InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                              'Sorry, this feature isn\'t available yet',
                              style: kSubtitle.copyWith(color: Colors.black),
                            )));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 60),
                            decoration: BoxDecoration(
                              color: kDarkBlue,
                              borderRadius: BorderRadius.circular(37),
                            ),
                            child: Text(
                              'Suggest Movie',
                              style: kSubtitle.copyWith(
                                  color: kWhite, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
