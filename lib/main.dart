import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'contratame_view.dart';
import 'en_mi_vida_view.dart';
import 'personajes_view.dart';
import 'acerca_de_view.dart';
import 'momentos_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  List<String> images = [
    "lib/assets/tenet_7.jpg",
    "lib/assets/tenet_8.jpg", //8
    "lib/assets/tenet_1.jpg", //1
    "lib/assets/tenet_5.jpg", //5
    "lib/assets/tenet_9.jpg", //9
    "lib/assets/tenet_6.jpg", //6
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TENET (2020)',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
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
                    'TENET',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
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
            title: const Text(
              'TENET',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
            child: _swiper(),
          )),
    );
  }

  Widget _swiper() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Swiper(
        viewportFraction: 0.85,
        scale: 0.95,
        itemBuilder: (BuildContext context, int index) {
          // return CachedNetworkImage(
          //   imageUrl: images[index],
          //   fit: BoxFit.fill,
          //   placeholder: (context, url) => const CircularProgressIndicator(),
          //   errorWidget: (context, url, error) => const Icon(Icons.error),
          // );
          return Image.asset(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        // pagination: SwiperPagination(),
        // control: SwiperControl(),
        autoplay: true,
        duration: 1500,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
