import 'package:desafio/pages/carrosel.dart';
import 'package:desafio/pages/estilos/stateless.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class catalogoPage extends StatefulWidget {
  const catalogoPage({super.key});

  @override
  State<catalogoPage> createState() => _catalogoPageState();
}

class _catalogoPageState extends State<catalogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFE3DADB),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 400,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/banner.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Container(
                                alignment: Alignment.center,
                                width: 365,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(251, 27, 51, 91),
                                  border: Border.all(
                                      width: 2,
                                      color:
                                          const Color.fromARGB(255, 248, 5, 5)),
                                ),
                                child: Text(
                                  'Transforme a vida de um animal,\n adote com amor!',
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 22),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Container(
                      height: 140,
                      width: 405,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(72, 227, 218, 219)),
                        color: const Color.fromARGB(255, 58, 52, 52),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const ImageCarousel(
                        imagePaths: [
                          'assets/samuel.png',
                          'assets/petmania.png',
                          'assets/senai.jpg',
                        ],
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          containersMode(
                              assetImage: 'assets/samuel.png',
                              nome: 'bolt',
                              especie: 'dog',
                              sexo: 'Macho',
                              idade: '3 anos',
                              tamanho: '30 cm'),
                          // sized_mod(),
                          // containersMode(
                          //   assetImage: 'assets/samuel.png',
                          //   productName: 'Tony',
                          //   preco: 199.99,
                          // ),
                          // sized_mod(),
                          // containersMode(
                          //   assetImage: 'assets/samuel.png',
                          //   productName: 'Mel',
                          //   preco: 199.99,
                          // ),
                          sized_mod(),
                          containersMode(
                              assetImage: 'assets/samuel.png',
                              nome: 'Pretinha',
                              especie: 'dog',
                              sexo: 'Macho',
                              idade: '3 anos',
                              tamanho: '30 cm'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          containersMode(
                              assetImage: 'assets/samuel.png',
                              nome: 'Babalu',
                              especie: 'dog',
                              sexo: 'Macho',
                              idade: '3 anos',
                              tamanho: '30 cm'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomApp(),
    );
  }

  Widget sized_mod() {
    return SizedBox(
      height: 10,
    );
  }

  Widget containersMode({
    required String assetImage,
    required String nome,
    required String especie,
    required String sexo,
    required String idade,
    required String tamanho,
  }) {
    var height = 350;
    return Container(
      width: 300,
      height: 375,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color.fromARGB(255, 222, 222, 211),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              assetImage,
              width: 190,
              height: height *
                  0.6, // Ajusta o tamanho da imagem proporcional ao container
              alignment: Alignment.topCenter,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            '$nome',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Espécie: $especie',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color.fromARGB(255, 72, 52, 52)),
                      ),
                      Text(
                        'Sexo: $sexo',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color.fromARGB(255, 72, 52, 52)),
                      ),
                      Text(
                        'Idade:$idade',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color.fromARGB(255, 72, 52, 52)),
                      ),
                      Text(
                        'Tamanho: $tamanho',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color.fromARGB(255, 72, 52, 52)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: HeartButton(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isLiked = false; // Variável para controlar o estado do coração

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          isLiked = !isLiked; // Alterna entre curtido e não curtido
        });
      },
      style: OutlinedButton.styleFrom(
        fixedSize: Size(40, 40), // Tamanho fixo do botão
        shape: CircleBorder(), // Forma circular do botão
        alignment: Alignment.center,
        side: BorderSide(color: Colors.transparent), // Sem borda visível
        backgroundColor: Colors.transparent, // Fundo transparente
      ),
      child: Icon(
        Icons.favorite, // Ícone do coração
        size: 20, // Tamanho do ícone

        color: isLiked
            ? Colors.red
            : const Color.fromARGB(
                134, 158, 158, 158), // Se curtido, ícone vermelho, senão cinza
      ),
    );
  }
}
