part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class OnSearch extends SearchEvent {
  final String search;

  const OnSearch(this.search);

  @override
  List<Object?> get props => [];
}
