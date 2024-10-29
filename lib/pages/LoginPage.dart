import 'package:desafio/pages/estilos/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/petmania.png'),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                width: 380,
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        autofocus: true,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        decoration: InputDecoration(
                          labelText: 'CPF',
                          labelStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonTheme(
                          child: TextButton(
                            onPressed: () => {},
                            child: Text(
                              'Esqueci a minha senha',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.lightBlueAccent,
                                    decorationThickness: 2.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => {},
                child: Text(
                  " Avançar ",
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Container(
                    width: 280,
                    height: 115,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(203, 9, 19, 13),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Wrap(
                              spacing: 15,
                              alignment: WrapAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                OutlinedButton(
                                  onPressed: () => {},
                                  child: Center(
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.google,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    shape: CircleBorder(),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () => {},
                                  child: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.white,
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    shape: CircleBorder(),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () => {},
                                  child: FaIcon(
                                    FontAwesomeIcons.envelope,
                                    color: Colors.white,
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 45,
                    child: Text(
                      "Outras formas de acesso",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
