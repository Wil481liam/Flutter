import 'package:desafio/pages/estilos/stateless.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class catalogo extends StatefulWidget {
  const catalogo({super.key});

  @override
  State<catalogo> createState() => _catalogoState();
}

class _catalogoState extends State<catalogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.hockeyPuck),
      ),
      //drawer: Menu(),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      containersMode(
                        assetImage: 'assets/samuel.png',
                        productName: 'Bolt',
                        preco: 199.99,
                      ),
                      sized_mod(),
                      containersMode(
                        assetImage: 'assets/samuel.png',
                        productName: 'Tony',
                        preco: 199.99,
                      ),
                      sized_mod(),
                      containersMode(
                        assetImage: 'assets/samuel.png',
                        productName: 'Mel',
                        preco: 199.99,
                      ),
                      sized_mod(),
                      containersMode(
                        assetImage: 'assets/samuel.png',
                        productName: 'Pretinha',
                        preco: 199.99,
                      ),
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
                        productName: 'Babalu',
                        preco: 199.99,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomApp(),
      //--------------------------------------------------------
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //       border: Border(
      //           top: BorderSide(
      //     color: Colors.white,
      //     width: 0.2,
      //   ))),
      //   child: BottomAppBar(
      //     color: Theme.of(context).colorScheme.primary,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Container(
      //           alignment: Alignment.center,
      //           child: ElevatedButton(
      //             style: ButtonStyle(
      //                 backgroundColor:
      //                     WidgetStatePropertyAll(Colors.transparent),
      //                 maximumSize: WidgetStatePropertyAll(Size(100, 200)),
      //                 minimumSize: WidgetStatePropertyAll(Size(100, 200)),
      //                 shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(2)))),
      //             onPressed: () => {},
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Icon(
      //                   FontAwesomeIcons.house,
      //                   size: 18,
      //                 ),
      //                 Text(
      //                   'home',
      //                   style: TextStyle(fontSize: 15),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           child: ElevatedButton(
      //               onPressed: () => {},
      //               style: ButtonStyle(
      //                 backgroundColor:
      //                     WidgetStatePropertyAll(Colors.transparent),
      //                 minimumSize: WidgetStatePropertyAll(Size(100, 200)),
      //                 maximumSize: WidgetStatePropertyAll(Size(100, 200)),
      //                 shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(2))),
      //               ),
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(
      //                     FontAwesomeIcons.dog,
      //                     size: 18,
      //                   ),
      //                   Text(
      //                     'Profile',
      //                     style: TextStyle(fontSize: 15),
      //                   ),
      //                 ],
      //               )),
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           child: ElevatedButton(
      //               onPressed: () => {},
      //               style: ButtonStyle(
      //                 backgroundColor:
      //                     WidgetStatePropertyAll(Colors.transparent),
      //                 minimumSize: WidgetStatePropertyAll(Size(100, 200)),
      //                 maximumSize: WidgetStatePropertyAll(Size(100, 200)),
      //                 shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(2))),
      //               ),
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(
      //                     FontAwesomeIcons.cartShopping,
      //                     size: 18,
      //                   ),
      //                   Text(
      //                     'carrinho',
      //                     style: TextStyle(fontSize: 14),
      //                   ),
      //                 ],
      //               )),
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           child: ElevatedButton(
      //               onPressed: () => {},
      //               style: ButtonStyle(
      //                 backgroundColor:
      //                     WidgetStatePropertyAll(Colors.transparent),
      //                 minimumSize: WidgetStatePropertyAll(Size(100, 200)),
      //                 maximumSize: WidgetStatePropertyAll(Size(100, 200)),
      //                 shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(2))),
      //               ),
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(
      //                     FontAwesomeIcons.bars,
      //                     size: 18,
      //                   ),
      //                   Text(
      //                     'menu',
      //                     style: TextStyle(fontSize: 15),
      //                   ),
      //                 ],
      //               )),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
//-----------------------------------------------
    );
  }

  Widget sized_mod() {
    return SizedBox(
      height: 10,
    );
  }

  Widget containersMode({
    required String assetImage,
    required String productName,
    required double preco,
  }) {
    var height = 350;
    return Container(
      width: 300,
      height: 340,
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
          const SizedBox(height: 8),
          Text(
            productName,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
          ),
          const SizedBox(height: 4),
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
                        'Espécie: $preco',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color.fromARGB(255, 72, 52, 52)),
                      ),
                      Text(
                        'Sexo:',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color.fromARGB(255, 72, 52, 52)),
                      ),
                      Text(
                        'Idade:',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Color.fromARGB(255, 72, 52, 52)),
                      ),
                      Text(
                        'Tamanho: ',
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
                child: OutlinedButton(
                  onPressed: () => {},
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(40, 40),
                    shape: CircleBorder(),
                    alignment: Alignment.center,
                    side: BorderSide(color: Colors.transparent),
                    overlayColor: Colors.transparent,
                  ),
                  child: Icon(
                    FontAwesomeIcons.heart,
                    size: 15,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
