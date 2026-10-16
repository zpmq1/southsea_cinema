import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 1;
  String _orderMessage = '';

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
          DropdownMenu<int>(
            initialSelection: _ticketQuantity,
            onSelected: (int? value) {
              if (value != null) {
                setState(() {
                  _ticketQuantity = value;
                  debugPrint('Selected ticket quantity: $_ticketQuantity');
                });
              }
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: 1, label: '1'),
              DropdownMenuEntry(value: 2, label: '2'),
              DropdownMenuEntry(value: 3, label: '3'),
              DropdownMenuEntry(value: 4, label: '4'),
              DropdownMenuEntry(value: 5, label: '5'),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            onPressed: () {
              setState(() {
                _orderMessage = 'You have ordered $_ticketQuantity ticket(s).';
              });
              debugPrint(_orderMessage);
            },
            child: const Text(
              'PRESS TO ORDER',
            ),
          ),
          SizedBox(height: 10),
          Text(
            _orderMessage,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
