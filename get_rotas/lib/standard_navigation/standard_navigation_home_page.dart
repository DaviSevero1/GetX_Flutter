import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/standard_navigation/back/back_home_page.dart';
import 'package:get_rotas/standard_navigation/off/off_home_page.dart';
import 'package:get_rotas/standard_navigation/to/to_home_page.dart';

class StandardNavigationHomePage extends StatelessWidget {
  const StandardNavigationHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegação Padrão'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const ToHomePage());
              },
              child: const Text('To (push)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const BackHomePage());
              },
              child: const Text('To (pop)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffHomePage());
              },
            child: const Text('Off(***)'),
            ),
          ],
        ),
      ),
    );
  }
}
