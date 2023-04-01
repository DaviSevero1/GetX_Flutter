import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/standard_navigation/offAll/off_all_page2.dart';

class OffAllPage1 extends StatelessWidget {
  const OffAllPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Page 1'),
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
                      return const OffAllPage2();
                    },
                    settings: const RouteSettings(name: 'ofPage2'),
                  ),
                  ModalRoute.withName('/OffAllHomePage'),
                );
              },
              child: const Text('Go to Page 2 With flutter native'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffAllPage2());
              },
              child: const Text('Go to Page 2 with GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
