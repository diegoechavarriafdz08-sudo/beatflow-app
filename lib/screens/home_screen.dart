import 'package:flutter/material.dart';

import '../data/songs_data.dart';
import 'player_screen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<int> favorites = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(

        backgroundColor: Colors.black,

        elevation: 0,

        title: const Text(

          "BeatFlow",

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),

        actions: [

          IconButton(

            onPressed: () {},

            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ],
      ),

      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Container(

            margin: const EdgeInsets.all(15),

            padding: const EdgeInsets.all(25),

            height: 220,

            width: double.infinity,

            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(35),

              gradient: const LinearGradient(

                colors: [
                  Colors.deepPurple,
                  Colors.black,
                ],

                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),

              boxShadow: const [

                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15,
                  offset: Offset(0, 8),
                ),
              ],
            ),

            child: Column(

              crossAxisAlignment:
                  CrossAxisAlignment.start,

              mainAxisAlignment:
                  MainAxisAlignment.center,

              children: const [

                Text(

                  "Trending Playlist",

                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),

                SizedBox(height: 15),

                Text(

                  "Night Vibes",

                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(

                  "Top global hits",

                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 20),

                Row(

                  children: [

                    Icon(
                      Icons.play_circle_fill,
                      color: Colors.green,
                      size: 40,
                    ),

                    SizedBox(width: 10),

                    Text(

                      "1.2M reproducciones",

                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(

            height: 50,

            child: ListView(

              scrollDirection: Axis.horizontal,

              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),

              children: [

                musicCategory("Pop"),
                musicCategory("Rock"),
                musicCategory("Hip Hop"),
                musicCategory("Lo-Fi"),
                musicCategory("Electronic"),
                musicCategory("Latin"),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(

            child: ListView.builder(

              physics:
                  const BouncingScrollPhysics(),

              itemCount: songs.length,

              itemBuilder: (context, index) {

                final song = songs[index];

                return GestureDetector(

                  onTap: () {

                    Navigator.push(

                      context,

                      MaterialPageRoute(

                        builder: (_) => PlayerScreen(
                          song: song,
                        ),
                      ),
                    );
                  },

                  child: AnimatedContainer(

                    duration:
                        const Duration(milliseconds: 300),

                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),

                    decoration: BoxDecoration(

                      color: const Color(0xFF181818),

                      borderRadius:
                          BorderRadius.circular(25),

                      boxShadow: const [

                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 8,
                        ),
                      ],
                    ),

                    child: ListTile(

                      contentPadding:
                          const EdgeInsets.all(12),

                      leading: Container(

                        width: 65,
                        height: 65,

                        decoration: BoxDecoration(

                          color: Colors.deepPurple,

                          borderRadius:
                              BorderRadius.circular(18),
                        ),

                        child: const Icon(

                          Icons.music_note,

                          color: Colors.white,

                          size: 35,
                        ),
                      ),

                      title: Text(

                        song.title,

                        style: const TextStyle(

                          color: Colors.white,

                          fontWeight: FontWeight.bold,

                          fontSize: 20,
                        ),
                      ),

                      subtitle: Padding(

                        padding: const EdgeInsets.only(
                          top: 5,
                        ),

                        child: Text(

                          song.artist,

                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      trailing: SizedBox(

                        width: 70,

                        child: Column(

                          mainAxisAlignment:
                              MainAxisAlignment.center,

                          children: [

                            IconButton(

                              padding: EdgeInsets.zero,

                              constraints:
                                  const BoxConstraints(),

                              onPressed: () {

                                setState(() {

                                  if (favorites
                                      .contains(index)) {

                                    favorites
                                        .remove(index);

                                  } else {

                                    favorites
                                        .add(index);
                                  }
                                });
                              },

                              icon: Icon(

                                favorites.contains(index)

                                    ? Icons.favorite
                                    : Icons.favorite_border,

                                color: Colors.green,

                                size: 30,
                              ),
                            ),

                            const SizedBox(height: 5),

                            Text(

                              song.duration,

                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.green,

        elevation: 10,

        onPressed: () {},

        child: const Icon(
          Icons.graphic_eq,
          size: 35,
        ),
      ),
    );
  }
}

Widget musicCategory(String text) {

  return Container(

    margin: const EdgeInsets.only(right: 10),

    padding: const EdgeInsets.symmetric(
      horizontal: 22,
      vertical: 12,
    ),

    decoration: BoxDecoration(

      color: Colors.deepPurple,

      borderRadius: BorderRadius.circular(30),
    ),

    child: Center(

      child: Text(

        text,

        style: const TextStyle(

          fontWeight: FontWeight.bold,

          fontSize: 15,
        ),
      ),
    ),
  );
}