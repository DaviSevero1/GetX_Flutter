import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/standard_navigation/offAll/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Page 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) {
                    return const OffAllPage3();
                  },
                  settings: const RouteSettings(name: 'ofPage3'),
                ),
                ModalRoute.withName(
                  '/',
                ), //Voltando para a tela inical pulando todas as outras empilhadas
              );
            },
            child: const Text('Go to Page 3 With flutter native'),
          ),
          TextButton(
            onPressed: () {
              Get.offAll(const OffAllPage3(),
                  predicate: ModalRoute.withName('/OffAllHomePage'));
            },
            child: const Text('Go to Page 3 with GetX'),
          ),
        ],
      )),
    );
  }
}
