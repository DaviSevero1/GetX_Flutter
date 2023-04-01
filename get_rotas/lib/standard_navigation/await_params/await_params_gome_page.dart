import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/standard_navigation/await_params/await_params_page1.dart';

import '../send_params/send_params_page1.dart';

class AwaitParamsHomePage extends StatelessWidget {
  const AwaitParamsHomePage({super.key});

  get text1 => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Params'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const AwaitParamsPage1();
                    },
                    settings: RouteSettings(arguments: text1),
                  ),
                );
              },
              child: const Text('Enviando Parâmetros pelo Fluter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const AwaitParamsPage1(),
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
