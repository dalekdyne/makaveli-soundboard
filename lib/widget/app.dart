import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:makavelisoundboard/util/quote.dart';

import 'searchable_quotes.dart';

class App extends StatelessWidget {
  final List<Quote> _allQuotes;

  const App(this._allQuotes);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Makaveli Soundboard',
        theme: ThemeData(primarySwatch: Colors.orange),
        darkTheme: ThemeData(
            brightness: Brightness.dark, primarySwatch: Colors.deepOrange),
        home: SearchableQuotes(_allQuotes),
      );

  PlayerState getAudioPlayerState() => getPlaybackState();
}
