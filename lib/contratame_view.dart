import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/personajes_view.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'acerca_de_view.dart';
import 'en_mi_vida_view.dart';
import 'main.dart';
import 'momentos_view.dart';

class ContactMeView extends StatefulWidget {
  const ContactMeView({Key? key}) : super(key: key);

  @override
  _ContactMeViewState createState() => _ContactMeViewState();
}

class _ContactMeViewState extends State<ContactMeView> {
  String fullName = '';
  String username = '';
  String photoUrl = '';

  @override
  void initState() {
    super.initState();
    fetchGitHubUser();
  }

  Future<void> fetchGitHubUser() async {
    final response =
        await http.get(Uri.https('api.github.com', 'users/2mingho'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        fullName = data['name'];
        username = data['login'];
        photoUrl = data['avatar_url'];
      });
    } else {
      print('Failed to fetch GitHub user. Error: ${response.statusCode}');
    }
  }

  void launchURL() async {
    const url = 'https://github.com/2mingho'; // Reemplaza con la URL deseada
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  'CONTRATAME',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
          title: Text('CONTRÁTAME'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(photoUrl),
              ),
              SizedBox(height: 16),
              Text(
                fullName,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '@$username',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 32),
              ListTile(
                leading: Icon(
                  Icons.email_sharp,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  'Correo Electrónico',
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                ),
                subtitle: Text(
                  'domingoalcanta04@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  'Número de Teléfono',
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                ),
                subtitle: Text(
                  '(829) 328-3594',
                  style: TextStyle(fontSize: 16, color: Colors.white60),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: launchURL,
                child: Text('Ir a GitHub'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
