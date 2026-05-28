import 'song_model.dart';

class Album {

  final String title;
  final String artist;
  final List<Song> songs;

  Album({

    required this.title,
    required this.artist,
    required this.songs,
  });
}