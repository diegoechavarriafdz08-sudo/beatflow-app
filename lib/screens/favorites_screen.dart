import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {

  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(

        backgroundColor: Colors.black,

        title: const Text("Favoritos"),
      ),

      body: ListView(

        children: [

          favoriteTile(
            "Blinding Lights",
            "The Weeknd",
          ),

          favoriteTile(
            "Starboy",
            "The Weeknd",
          ),

          favoriteTile(
            "Levitating",
            "Dua Lipa",
          ),

          favoriteTile(
            "Believer",
            "Imagine Dragons",
          ),
        ],
      ),
    );
  }
}

Widget favoriteTile(
  String title,
  String artist,
) {

  return Container(

    margin: const EdgeInsets.all(12),

    decoration: BoxDecoration(

      color: const Color(0xFF181818),

      borderRadius: BorderRadius.circular(20),
    ),

    child: ListTile(

      leading: Container(

        width: 60,
        height: 60,

        decoration: BoxDecoration(

          color: Colors.deepPurple,

          borderRadius: BorderRadius.circular(15),
        ),

        child: const Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      ),

      title: Text(

        title,

        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: Text(

        artist,

        style: const TextStyle(
          color: Colors.grey,
        ),
      ),

      trailing: const Icon(
        Icons.play_arrow,
        color: Colors.green,
      ),
    ),
  );
}