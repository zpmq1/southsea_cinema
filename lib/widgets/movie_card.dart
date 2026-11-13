import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cinemaSurface,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(movie.imageUrl, fit: BoxFit.cover, height: 80, width: 80),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title, style: cinemaHeaderStyle),
                const SizedBox(height: 4),
                Text(movie.description,
                    style: const TextStyle(color: cinemaFontMuted)),
                const SizedBox(height: 4),
                Text('Duration: ${movie.duration}',
                    style: const TextStyle(color: cinemaFontMuted)),
                const SizedBox(height: 4),
                Text('Rating: ${movie.rating}',
                    style: const TextStyle(color: cinemaFontMuted)),
                const SizedBox(height: 4),
                Text('Screening Times: ${movie.screeningTimes}',
                    style: const TextStyle(color: cinemaFontMuted)),
                const SizedBox(height: 4),
                Text('Ticket Price: \$${movie.ticketPrice.toStringAsFixed(2)}',
                    style: const TextStyle(color: cinemaFontMuted)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
