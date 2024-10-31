import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class secret_1 extends StatefulWidget {
  const secret_1({super.key});

  @override
  State<secret_1> createState() => _secret_1State();
}

class _secret_1State extends State<secret_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        assetImage: 'assets/luz_teste.jpg',
                        productName: 'BBBBBBBB',
                        preco: 199.99,
                      ),
                      sized_mod(),
                      containersMode(
                        assetImage: 'assets/luz_teste.jpg',
                        productName: 'BBBBBBBB',
                        preco: 199.99,
                      ),
                      sized_mod(),
                      containersMode(
                        assetImage: 'assets/luz_teste.jpg',
                        productName: 'BBBBBBBB',
                        preco: 199.99,
                      ),
                      sized_mod(),
                      containersMode(
                        assetImage: 'assets/samuel.png',
                        productName: 'BBBBBBBB',
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
                        assetImage: 'assets/luz_teste.jpg',
                        productName: 'BBBBBBBB',
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
          color: Colors.white,
          width: 0.2,
        ))),
        child: BottomAppBar(
          color: Theme.of(context).colorScheme.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.transparent),
                      maximumSize: WidgetStatePropertyAll(Size(100, 200)),
                      minimumSize: WidgetStatePropertyAll(Size(100, 200)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)))),
                  onPressed: () => {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.house,
                        size: 18,
                      ),
                      Text(
                        'home',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.transparent),
                      minimumSize: WidgetStatePropertyAll(Size(100, 200)),
                      maximumSize: WidgetStatePropertyAll(Size(100, 200)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2))),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.dog,
                          size: 18,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.transparent),
                      minimumSize: WidgetStatePropertyAll(Size(100, 200)),
                      maximumSize: WidgetStatePropertyAll(Size(100, 200)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2))),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.cartShopping,
                          size: 18,
                        ),
                        Text(
                          'carrinho',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.transparent),
                      minimumSize: WidgetStatePropertyAll(Size(100, 200)),
                      maximumSize: WidgetStatePropertyAll(Size(100, 200)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2))),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.bars,
                          size: 18,
                        ),
                        Text(
                          'menu',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
    height: 280,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: const Color.fromARGB(150, 144, 202, 119),
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
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          'R\$ $preco',
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    ),
  );
}
