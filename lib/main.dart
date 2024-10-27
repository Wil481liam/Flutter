import 'package:desafio/pages/estilos/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:desafio/pages/LoginPage.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Demo',
        theme: colors_app.Theme,
        home: const Loginpage() //MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void onPressed1() {
    launchUrl(Uri(scheme: 'tel', path: '(63) 99999-9999'));
  }

  void onPressed2() {
    launchUrl(Uri(scheme: 'mailto', path: 'samuel.teles@professor.senai.br'));
  }

  void onPressed3() {
    launchUrl(Uri(scheme: 'sms', path: '(63) 77777-7777'));
  }

  void onPressed4() {
    launchUrl(Uri(scheme: 'https', path: 'maps.app.goo.gl/AGf1dN9h7hUg3ERs5'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/samuel.png'),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Samuel Teles dos Santos',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: onPressed1,
                    icon: const Icon(
                      Icons.phone,
                      color: Color.fromARGB(224, 148, 51, 82),
                    )),
                const SizedBox(width: 10),
                IconButton(
                    onPressed: onPressed2,
                    icon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 62, 155, 112),
                    )),
                const SizedBox(width: 10),
                IconButton(
                    onPressed: onPressed3,
                    icon: const Icon(
                      Icons.sms,
                      color: Color.fromARGB(255, 81, 130, 244),
                    )),
                const SizedBox(width: 10),
                IconButton(
                    onPressed: onPressed4,
                    icon: const Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 194, 67, 67),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
