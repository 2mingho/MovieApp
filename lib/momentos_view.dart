import 'package:flutter/material.dart';
import 'package:flutter_application_1/personajes_view.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'acerca_de_view.dart';
import 'contratame_view.dart';
import 'en_mi_vida_view.dart';
import 'main.dart';

void main() {
  runApp(const MomentosViewApp());
}

class MomentosViewApp extends StatelessWidget {
  const MomentosViewApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuadrícula',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
      routes: {
        '/detail': (context) => DetailPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<ItemModel> items = [
    ItemModel(
        'Ataque de la Ópera de Kiev',
        'En este momento, el protagonista y su equipo llevan a cabo una misión para prevenir una explosión en el Teatro Nacional de Ópera de Kiev. Utilizando la tecnología de inversión temporal, se enfrentan a enemigos que se mueven hacia atrás en el tiempo. La secuencia muestra una combinación de acción frenética y efectos visuales impresionantes mientras los personajes luchan en un entorno en el que el tiempo fluye en diferentes direcciones.',
        'VOimOag-gKM&ab',
        'lib/videos/momento_1.png'),
    ItemModel(
        'Batalla en un almacén de contenedores',
        'En esta escena, hay una intensa batalla que tiene lugar en un almacén de contenedores. Los protagonistas se enfrentan a un grupo de antagonistas que también tienen acceso a la inversión temporal. La secuencia se caracteriza por su coreografía única, ya que los personajes se mueven hacia adelante y hacia atrás en el tiempo, creando situaciones de combate y evasión intrigantes y desafiantes.',
        'V1NY9ZoKhRk&ab',
        'lib/videos/momento_2.png'),
    ItemModel(
        'Aeropuerto de Tempelhof en Berlín',
        'El clímax de la película tiene lugar en el Aeropuerto de Tempelhof en Berlín. Aquí, se desarrolla una confrontación masiva entre diferentes facciones que se han involucrado en una guerra temporal. La secuencia es una fusión de acción, efectos especiales y revelaciones sorprendentes relacionadas con la trama de la película. La escala y la complejidad de los eventos hacen que este sea un momento emocionante y crucial en la historia de "Tenet".',
        '8Uz8nQKl2P0&ab',
        'lib/videos/momento_3.png'),
  ];

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
                'MOMENTOS',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
        title: Text('MOMENTOS', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: item);
            },
            child: GridTile(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item.icon,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    item.title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ItemModel item =
        ModalRoute.of(context)?.settings.arguments as ItemModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('DETALLES', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Color.fromRGBO(13, 0, 24, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(item.title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: 'VOimOag-gKM&ab',
                flags: YoutubePlayerFlags(
                  autoPlay: true,
                  mute: true,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
              onReady: () {
                // TODO: Implement any custom logic here
              },
            ),
            SizedBox(height: 10),
            Text(item.subtitle,
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class ItemModel {
  final String title;
  final String subtitle;
  final String videoUrl;
  final String icon;

  ItemModel(this.title, this.subtitle, this.videoUrl, this.icon);
}
