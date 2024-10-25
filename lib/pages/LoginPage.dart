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
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                const CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/samuel.png'),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  width: 415,
                  child: TextFormField(
                    autofocus: true,
                    style: new TextStyle(color: Colors.white, fontSize: 20),
                    cursorWidth: Checkbox.width,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'CPF',
                      labelStyle: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 415,
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Senha',
                      labelStyle: TextStyle(color: Colors.lightBlue),
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
                        child: const Text(
                          'Esqueci a minha senha',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                ButtonTheme(
                  colorScheme: const ColorScheme.highContrastDark(),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(190, 45),
                        foregroundColor: Colors.cyanAccent,
                        backgroundColor: const Color.fromARGB(202, 38, 45, 46)),
                    onPressed: () => {},
                    child: Text(
                      "Avançar -->",
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
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
                        side: BorderSide(color: Colors.red, width: 1),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () => {},
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: CircleBorder(),
                        side: BorderSide(color: Colors.red, width: 1),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
