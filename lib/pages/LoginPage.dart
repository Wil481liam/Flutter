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
      // backgroundColor: Colors.black,
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
                    border: Border.all(
                      color: Colors.white,
                      width: 1
                    )
                   ),
                    child:  CircleAvatar(
                      radius: 150,
                      backgroundImage: AssetImage('assets/samuel.png'),
                      
                    ),
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
                      labelText: 'CPF',
                       labelStyle: Theme.of(context).textTheme.labelMedium,         
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
                    // style: new TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                    //   border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(20)),
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
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
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

                        width: 260,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).floatingActionButtonTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white)
                        ),
                        child:
                        Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                  
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  SizedBox(height: 60,),
                                  
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
                                  OutlinedButton(onPressed: () =>{}, 
                                  child: FaIcon(
                                      FontAwesomeIcons.envelope,
                                      color: Colors.white,
                                  ),
                                    style: OutlinedButton.styleFrom(
                                        shape: CircleBorder()
                                    ),
                                  )
                                ],
                              )
                            ],
                        ) 
                      ),
                       Positioned(
                          top: 0,
                          left: 15,
                          
                          //left:Center,
                          child: 
                          Text("Outras formas de acesso",style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      )
                  ],
                ),
              
              ],
            ),
          )),
    );
  }
}
