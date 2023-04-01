import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/standard_navigation/send_params/send_params_page1.dart';
import 'package:get_rotas/standard_navigation/to/page1.dart';

class SendParams extends StatelessWidget {
  const SendParams({super.key});

  @override
  Widget build(BuildContext context) {
    final text1 = "Enviando Parâmetros pelo Fluter NNativo";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviar PARAMS'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SendParamsPage1();
                    },
                    settings: RouteSettings(arguments: text1),
                  ),
                );
              },
              child: const Text('Enviando Parâmetros pelo Fluter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const SendParamsPage1(),
                    arguments: 'Parametro pelo GetX');
              },
              child: const Text('Passando parâmetros pelo GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
