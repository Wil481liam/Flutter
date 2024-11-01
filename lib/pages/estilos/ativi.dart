import 'package:flutter/material.dart';

class Ativi extends StatefulWidget {
  const Ativi({super.key});

  @override
  State<Ativi> createState() => _AtiviState();
}

class _AtiviState extends State<Ativi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Icon(Icons.menu),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Catalago')
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/senai.jpg'),
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => {},
                          icon: Icon(Icons.phone),
                          label: Text('Ligar'),
                          style: ButtonStyle(
                              fixedSize: WidgetStatePropertyAll(Size(20, 40))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton.icon(
                            onPressed: () => {},
                            icon: Icon(Icons.local_activity),
                            label: Text('Localização')),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton.icon(
                            onPressed: () => {},
                            icon: Icon(Icons.share),
                            label: Text('Compartilhar'))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 210,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white60),
                        color: const Color.fromARGB(150, 65, 63, 63)),
                    child: Column(
                      children: [
                        Text(
                            'Endereço: Quadra AANO 20,\n Avenida LO-04, Lote 05 - \nPlano Diretor Norte,\n Palmas - TO,\n 77001-132'
                            '\nTelefone: (63) 3229-5656'
                            '\nHorário de funcionamento:'
                            '\nAberto ⋅ Fecha às 22:00')
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 400,
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white60),
                    color: const Color.fromARGB(150, 65, 63, 63)),
                child: Row(
                  children: [
                    Text('CURSOS\n\n\n'
                        'Pesquisar Todos.\n'
                        'Administração e Gestão.\n'
                        'Alimentos e Bebidas.\n'
                        'Construção Civil e Design de Mobiliário.\n'
                        'Design de Moda,\n'
                        'Têxtil,\n'
                        'Vestuário,\n'
                        'Calçados e Joalheria.\n'
                        'Design Gráfico,\n'
                        'Papel,\n'
                        'Celulose,\n'
                        'Gráfica e Editorial.\n'
                        'Fabricação Mecânica \n'
                        'Manutenção Industrial.\n'
                        'Logística\n'
                        'Transporte.')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
