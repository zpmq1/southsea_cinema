import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Drive (2011)',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            '(18+) 100 min',
            style: TextStyle(fontSize: 16, color: cinemaFontMuted),
          ),
          SizedBox(height: 10),
          Text(
            'A mysterious Hollywood action film stuntman gets in trouble with gangsters when he tries to help his neighbors husband rob a pawn shop while serving as his getaway driver.',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 40),
          Text(
            'Select Quantities (Up to 5 in total)',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          SizedBox(height: 10),
          // Add your movie listing widgets here
        ]),
      ),
    );
  }
}
