class Movie {
  String image;
  String title;
  String genres;
  int rating;

  Movie(this.image, this.title, this.genres, this.rating);
}

final List<Movie> highlight = [
  Movie('assets/image 3.png', 'John Wick 4', 'Action, Crime', 5),
  Movie('assets/image 4.png', 'Bohemian', 'Documentary', 3),
];

final List<Movie> fromDisney = [
  Movie('assets/image 7.png', 'Mulan Session', 'History, War', 3),
  Movie('assets/image 6.png', 'Beauty & Beast', 'Sci-Fiction', 5),
];

final List<Movie> searchResult = [
  Movie('assets/image 8.png', 'The Dark II', 'Horror', 4),
  Movie('assets/image 9.png', 'The Dark Knight', 'Heroes', 5),
  Movie('assets/image 10.png', 'The Dark Tower', 'Action', 4),
];
