import 'package:flutter/material.dart';
import 'main_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.deepPurple,
            ],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(25),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Icon(
                  Icons.music_note,
                  color: Colors.green,
                  size: 100,
                ),

                const SizedBox(height: 20),

                const Text(
                  "BeatFlow",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                TextField(
                  style: const TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                    hintText: "Correo",
                    hintStyle: const TextStyle(color: Colors.grey),

                    filled: true,
                    fillColor: Colors.black54,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                    hintText: "Contraseña",
                    hintStyle: const TextStyle(color: Colors.grey),

                    filled: true,
                    fillColor: Colors.black54,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(18),
                    ),

                    onPressed: () {

                      Navigator.pushReplacement(
                        context,

                        MaterialPageRoute(
                          builder: (_) => const MainNavigation(),
                        ),
                      );
                    },

                    child: const Text(
                      "Iniciar sesión",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}