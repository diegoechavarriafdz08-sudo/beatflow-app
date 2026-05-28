import 'package:flutter/material.dart';

import '../models/song_model.dart';

class PlayerScreen extends StatefulWidget {

  final Song song;

  const PlayerScreen({
    super.key,
    required this.song,
  });

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {

  double progress = 0.3;

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(

        backgroundColor: Colors.black,

        elevation: 0,

        title: const Text("Now Playing"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(25),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            const SizedBox(height: 20),

            Container(

              height: 300,
              width: 300,

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(30),

                gradient: const LinearGradient(

                  colors: [
                    Colors.deepPurple,
                    Colors.black,
                  ],

                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),

              child: const Icon(
                Icons.music_note,
                size: 120,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 40),

            Text(

              widget.song.title,

              style: const TextStyle(

                color: Colors.white,

                fontSize: 32,

                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(

              widget.song.artist,

              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 40),

            Slider(

              value: progress,

              activeColor: Colors.green,

              inactiveColor: Colors.grey,

              onChanged: (value) {

                setState(() {
                  progress = value;
                });
              },
            ),

            Row(

              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,

              children: const [

                Text(
                  "1:12",
                  style: TextStyle(color: Colors.grey),
                ),

                Text(
                  "3:45",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Row(

              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,

              children: [

                IconButton(

                  onPressed: () {},

                  icon: const Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 45,
                  ),
                ),

                GestureDetector(

                  onTap: () {

                    setState(() {
                      isPlaying = !isPlaying;
                    });
                  },

                  child: Container(

                    padding: const EdgeInsets.all(20),

                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),

                    child: Icon(

                      isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,

                      size: 45,

                      color: Colors.white,
                    ),
                  ),
                ),

                IconButton(

                  onPressed: () {},

                  icon: const Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}