import 'package:core/core.dart';
import 'package:core/presentation/bloc/search/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:core/presentation/pages/home_page.dart';
import 'package:core/presentation/pages/search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Moviez());
}

class Moviez extends StatelessWidget {
  const Moviez({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Moviez',
        theme: ThemeData.light().copyWith(
          colorScheme: kColorScheme,
          textTheme: kTextTheme,
          scaffoldBackgroundColor: kBackground,
          primaryColor: kWhite,
        ),
        home: const HomePage(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/home':
              return MaterialPageRoute(
                builder: (_) => const HomePage(),
              );
            case SearchPage.routeName:
              return MaterialPageRoute(
                builder: (_) => const SearchPage(),
              );
          }
          return null;
        },
      ),
    );
  }
}
