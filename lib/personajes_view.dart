import 'package:flutter/material.dart';
import 'package:flutter_application_1/en_mi_vida_view.dart';
import 'package:flutter_application_1/main.dart';
import 'acerca_de_view.dart';
import 'contratame_view.dart';
import 'momentos_view.dart';

void main() {
  runApp(const PersonajesViewApp());
}

class PersonajesViewApp extends StatelessWidget {
  const PersonajesViewApp({super.key});

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
        'El Protagonista',
        'Es el personaje principal de la historia, y su nombre real nunca se revela. Es reclutado por una organización secreta conocida como Tenet para llevar a cabo una misión que involucra la manipulación del tiempo',
        'personajes/protagonista.png'),
    ItemModel(
        'Kat',
        'Es la esposa de un poderoso traficante de armas llamado Sator. Kat se encuentra atrapada en una relación abusiva y desesperada por escapar. Su personaje juega un papel crucial en la trama y se ve involucrada en las manipulaciones temporales.',
        'personajes/kat.png'),
    ItemModel(
        'Neil',
        'Es un miembro de Tenet y se convierte en un aliado cercano del Protagonista. Es un personaje enigmático con habilidades impresionantes. A medida que la trama se desarrolla, se revela que tiene una conexión más profunda con el Protagonista de lo que inicialmente se pensaba.',
        'personajes/neil.png'),
    ItemModel(
        'Sator',
        'Es el villano principal de la película. Sator es un traficante de armas ruso con acceso a tecnología que le permite invertir el flujo del tiempo. Es un hombre peligroso y manipulador que busca obtener un poder inmenso a través de los eventos que se desarrollan en la trama.',
        'personajes/sator.png'),
    ItemModel(
        'Mahir',
        'Es prácticamente el comodín de El protagonista, ya que gracias a él ciertas situaciones se pueden llevar a cabo; es confiable, cumplidor y valiente, por lo que es importante para la misión principal.',
        'personajes/mahir.png'),
    ItemModel(
        'Crosby',
        'Personaje crucial para la misión de El protagonista y cuyos contactos y conocimientos detonan el comienzo de la trama.',
        'personajes/crosby.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(160, 65, 255, 0.6),
        child: ListView(
          padding: EdgeInsetsDirectional.zero,
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
                'PERSONAJES',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
                'Acerca De',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TenetViewApp(),
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
        title:
            Text('PERSONAJES', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
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
                  // CachedNetworkImage(
                  //   imageUrl: item.icon,
                  //   fit: BoxFit.fitHeight,
                  //   placeholder: (context, url) =>
                  //       const CircularProgressIndicator(),
                  //   errorWidget: (context, url, error) =>
                  //       const Icon(Icons.error),
                  // ),
                  ClipRRect(
                    // Esquinas redondeadas para la imagen
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item.icon,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 30),
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
            ClipRRect(
              // Esquinas redondeadas para la imagen
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                item.icon,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16), // Margen para el título
              child: Text(
                item.title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  16, 0, 16, 16), // Margen en los bordes del texto de detalles
              child: Text(
                item.subtitle,
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemModel {
  final String title;
  final String subtitle;
  final String icon;

  ItemModel(this.title, this.subtitle, this.icon);
}
