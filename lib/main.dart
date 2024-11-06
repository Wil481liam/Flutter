import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:desafio/pages/estilos/colors.dart';
import 'package:desafio/pages/catalogo.dart';

import 'package:desafio/pages/LoginPage.dart';
import 'package:desafio/pages/estilos/bdLocal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => bdLocal()),
      ],
      child: MaterialApp(
        title: 'App Demo',
        debugShowCheckedModeBanner: false,
        theme: colors_app.Theme,
        initialRoute: '/LoginPage',
        routes: {
          '/LoginPage': (context) => const Loginpage(),
          '/catalogo': (context) => const catalogoPage(),
        },
      ),
    );
  }
}
