import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/personajes_view.dart';
import 'package:flutter_application_1/momentos_view.dart';

import 'contratame_view.dart';
import 'en_mi_vida_view.dart';

void main() {
  runApp(TenetViewApp());
}

class TenetViewApp extends StatelessWidget {
  const TenetViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TENET',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const TenetPage(),
    );
  }
}

class TenetPage extends StatelessWidget {
  const TenetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(160, 65, 255, 0.6),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text(
                'Tenet',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Personajes',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PersonajesViewApp(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Momentos',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MomentosViewApp(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'ACERCA DE',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TenetPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'En mi vida',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VidaApp(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Contrátame',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactMeView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Acerca de',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'TENET',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  // Esquinas redondeadas para la imagen
                  borderRadius: BorderRadius.circular(10),
                  child: ClipRRect(
                    // Esquinas redondeadas para la imagen
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'personajes/about.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                )),
            SizedBox(height: 6),
            const Text(
              'Duración: 2h 30m',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 16),
            const Text(
              'Información de la película:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            const Text(
              'TENET es una película de ciencia ficción escrita y dirigida por Christopher Nolan. Fue estrenada en 2020 y cuenta con un elenco destacado, incluyendo a John David Washington, Robert Pattinson y Elizabeth Debicki. La película combina elementos de espionaje y viajes en el tiempo, presentando una trama compleja y llena de giros sorprendentes. La duración de la película es de aproximadamente 150 minutos.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 16),
            const Text(
              'Información de los productores:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            const Text(
              'TENET fue producida por Emma Thomas y Christopher Nolan. Ambos son reconocidos productores de la industria cinematográfica y han colaborado en varias películas exitosas. Su trabajo conjunto ha sido aclamado por la crítica y han establecido una reputación por crear películas innovadoras y visualmente impresionantes.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 16),
            const Text(
              'Información curiosa:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            const Text(
              'TENET fue el resultado de años de desarrollo y planificación meticulosa. La película se destacó por sus efectos visuales impresionantes y su enfoque innovador en la manipulación del tiempo. También generó discusiones y teorías entre los fanáticos debido a su naturaleza intrigante y abierta a la interpretación. TENET ha sido elogiada por su cinematografía, música y actuaciones, y ha dejado una marca duradera en el género de la ciencia ficción.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
