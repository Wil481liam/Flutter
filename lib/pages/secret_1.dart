import 'package:flutter/material.dart';
//import 'package:desafio/pages/estilos/colors.dart';

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
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'AAAAAAAAAAAAAAAA',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
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
