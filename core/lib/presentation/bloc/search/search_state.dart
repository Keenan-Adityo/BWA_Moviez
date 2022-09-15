part of 'search_bloc.dart';

@immutable
class SearchState extends Equatable {
  final List<Movie> result;

  const SearchState({
    required this.result,
  });

  SearchState copyWith({
    List<Movie>? result,
  }) {
    return SearchState(result: result ?? this.result);
  }

  factory SearchState.initial() {
    return const SearchState(
      result: [],
    );
  }

  @override
  List<Object?> get props => [result];
}
