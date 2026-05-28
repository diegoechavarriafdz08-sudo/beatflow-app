import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text("Mi Perfil"),
      ),

      body: Column(
        children: [
          const SizedBox(height: 40),

          const CircleAvatar(
            radius: 60,

            backgroundColor: Colors.deepPurple,

            child: Icon(Icons.person, size: 70, color: Colors.white),
          ),

          const SizedBox(height: 20),

          const Text(
            "Diego",

            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Usuario Premium",

            style: TextStyle(color: Colors.green, fontSize: 18),
          ),

          const SizedBox(height: 40),

          profileOption(Icons.music_note, "Mis playlists"),
          profileOption(Icons.favorite, "Canciones favoritas"),
          profileOption(Icons.download, "Descargas"),
          profileOption(Icons.settings, "Configuración"),
          profileOption(Icons.logout, "Cerrar sesión"),
        ],
      ),
    );
  }
}

Widget profileOption(IconData icon, String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),

    decoration: BoxDecoration(
      color: const Color(0xFF181818),

      borderRadius: BorderRadius.circular(20),
    ),

    child: ListTile(
      leading: Icon(icon, color: Colors.green),

      title: Text(text, style: const TextStyle(color: Colors.white)),

      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 18,
      ),
    ),
  );
}
