import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
  );
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
              Form(
                key: _formKey,
                child: Container(
                  width: 380,
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                          inputFormatters: [cpfFormatter],
                          autofocus: true,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          decoration: InputDecoration(
                            errorStyle: TextStyle(color: Colors.white30),
                            labelText: 'CPF',
                            labelStyle: Theme.of(context).textTheme.labelMedium,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF45B4A6),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2CB0CE)),
                            ),
                          ),
                          validator: (valor) {
                            if (valor == null || valor.isEmpty) {
                              return 'Você precisa usar o seu cpf';
                            } else if (valor.length < 14 || valor.length > 14) {
                              return 'O CPF deve ter 11 caracteres';
                            }
                            return null;
                          },
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
                            errorStyle: TextStyle(color: Colors.white30),
                            labelText: 'Senha',
                            labelStyle: Theme.of(context).textTheme.labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2CB0CE)),
                            ),
                          ),
                          validator: (valor) {
                            if (valor == null || valor.isEmpty) {
                              return 'Digite sua senha';
                            } else if (valor.length < 8 || valor.length > 10) {
                              return 'A senha deve ter de 8 a 10 caracteres';
                            }
                            return null;
                          },
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
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Formulário válido!')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Por favor, corrija os erros.'),
                        backgroundColor:
                            const Color.fromARGB(255, 201, 238, 255),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    );
                  }
                },
                //() => {},
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
