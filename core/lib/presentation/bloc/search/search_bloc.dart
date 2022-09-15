import 'package:core/domain/entities/movies.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    on<SearchEvent>((event, emit) {});

    on<OnSearch>((event, emit) {
      final movies = searchResult
          .where((element) => element.title.contains(event.search))
          .toList();

      emit(state.copyWith(result: movies));
    });
  }
}
