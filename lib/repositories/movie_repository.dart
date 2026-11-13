import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return [
      const Movie(
        id: 'drive',
        title: 'Drive (2011)',
        description:
            'A mysterious Hollywood action film stuntman gets in trouble with gangsters when he tries to help his neighbors husband rob a pawn shop while serving as his getaway driver.',
        duration: '100 min',
        rating: '18+',
        screeningTimes: 'Mon-Fri: 7:00 PM, Sat-Sun: 5:00 PM',
        ticketPrice: 10.0,
        imageUrl: 'assets/images/drive.jpg',
      ),
      const Movie(
        id: 'get-out',
        title: 'Get Out (2017)',
        description:
            'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering unease about their reception of him eventually reaches a boiling point.',
        duration: '104 min',
        rating: 'R',
        screeningTimes: 'Mon-Fri: 7:00 PM, Sat-Sun: 5:00 PM',
        ticketPrice: 10.0,
        imageUrl: 'assets/images/getout.jpg',
      ),
    ];
  }
}
