import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aguardando Parâmetros'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('Retornado algo aqui');
              },
              child: const Text('Retornando Parâmetros pelo Fluter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back(
                  result: 'retornando parametrpo pelo GetX'
                );
              },
              child: const Text('Passando parâmetros pelo GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
