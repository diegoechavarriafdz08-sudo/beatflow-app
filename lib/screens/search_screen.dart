import 'package:flutter/material.dart';

import '../data/albums_data.dart';
import '../models/song_model.dart';
import 'player_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String search = "";

  List<Song> allSongs = [];

  @override
  void initState() {
    super.initState();

    for (var album in albums) {
      allSongs.addAll(album.songs);
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredSongs = allSongs.where((song) {
      return song.title.toLowerCase().contains(search.toLowerCase()) ||
          song.artist.toLowerCase().contains(search.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Buscar"),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),

            child: TextField(
              onChanged: (value) {
                setState(() {
                  search = value;
                });
              },

              decoration: InputDecoration(
                hintText: "Buscar canciones o artistas",

                filled: true,

                fillColor: Colors.grey[900],

                prefixIcon: const Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: filteredSongs.length,

              itemBuilder: (context, index) {
                final song = filteredSongs[index];

                return Card(
                  color: Colors.grey[900],

                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),

                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,

                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: const Icon(Icons.music_note, color: Colors.white),
                    ),

                    title: Text(song.title),

                    subtitle: Text("${song.artist} • ${song.album}"),

                    trailing: const Icon(
                      Icons.play_circle_fill,
                      color: Colors.green,
                    ),

                    onTap: () {
                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (_) => PlayerScreen(song: song),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
