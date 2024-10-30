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
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 200,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.orange)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 255, 255, 254))),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 100, 4, 4))),
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 178, 178, 178))),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 67, 244, 3))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.orange)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
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
