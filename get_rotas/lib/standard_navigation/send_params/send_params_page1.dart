import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final paramNative =
        ModalRoute.of(context)?.settings.arguments ?? 'Parametro n enviado';
    final paramGetX = Get.arguments ?? 'Parametro n enviado';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo Parâmetros'),
      ),
      body: Center(
        child: Column(children: [Text(paramGetX), Text('$paramNative')]),
      ),
    );
  }
}
