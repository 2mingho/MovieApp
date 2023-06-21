import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/personajes_view.dart';
import 'package:flutter_application_1/momentos_view.dart';
import 'acerca_de_view.dart';
import 'contratame_view.dart';

void main() {
  runApp(VidaApp());
}

class VidaApp extends StatelessWidget {
  const VidaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'En mi vida',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                'Acerca de',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
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
                'EN MI VIDA',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
        title: const Text('En mi vida',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'lib/videos/ciencia.png', // Tenet img
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: const Text(
                'Desde que tengo uso de razón me ha generado curiosidad la ciencia, el espacio; como niño me entusiasmaba todo lo relativo a los viajes temporales, y la exploración de lugares o factores que estén fuera del alcance de los seres humanos.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'lib/videos/bannerSpace.png', // Tenet img
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 13),
            const Text(
              'Me han llamado la atención las historias sobre los viajes espaciales, la llegada del primer hombre al espacio, la primera vez que el hombre pisó la luna, los viajes posteriores al Apollo 11 y el comeback de los viajes espaciales con la llegada de Elon Musk y SpaceX al área aeroespacial.',
              // foto de collage de los viajes espaciales
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 13),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'lib/videos/f1.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 13),
            const Text(
              'Me gustan los viajes espaciales por la gran tecnología que se necesita y la necesidad de que todas las cosas estén en su sitio exacto para que todo salga bien, dato curioso, en base a la misma premisa de los gustos relacionados con la tecnología y la exactitud de datos, soy fan de la Fórmula 1.',
              // foto de la f1
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 13),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'lib/videos/jav.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 13),
            const Text(
              'Descubrí una de las películas que más me han gustado gracias a Javier Santaolalla, un divulgador de ciencia en YouTube y en ocasiones analiza películas y sus fenómenos físicos, analizando si es o no posible, aquí conocí "The Martian".',
              // foto de la peli
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 18),
            const Text(
              'Resumen: The Martian',
              // foto de la peli
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 13),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'lib/videos/martian.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 8),
            const Text(
              'En 2035, durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata, por lo que, tras haber dado por desaparecido y muerto al astronauta Mark Watney, sus compañeros toman la decisión de irse; sin embargo, ha sobrevivido, pero está solo y con pocos recursos en el planeta. Con muy pocos medios, deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la NASA que todavía está vivo, esperando que acudan en su rescate, mientras que los científicos de la NASA necesitan la ayuda de otras agencias espaciales y de las mentes más brillantes del Planeta Tierra para realizar una misión de rescate.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 13),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'lib/videos/interstellar.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 13),
            const Text(
              'A partir de ver el resumen, decidí ver la película, claro que vi el video hasta donde no hace spoilers y luego que vi la película lo terminé. Luego hice lo mismo viendo el análisis de "Interstellar", una de las mejores películas que he visto, dirigida por Christopher Nolan, que es hasta ahora el único director de cine que me ha llamado la atención por cada obra de arte que hace.',
              // foto de la peli
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 13),
            const Text(
              'Finalmente, esto me llevó a otra obra de Nolan, una película de accion, viajes y anomalías temporales, TENET, que me dejó una sensación bastante buena y me permitió disfrutar mucho la fotografía, la calidad, los efectos especiales y la historia, aunque algo confusa, es disfrutable',
              // foto de la peli
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
