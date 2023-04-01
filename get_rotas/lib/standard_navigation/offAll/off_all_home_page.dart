import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/standard_navigation/offAll/off_all_page1.dart';
import 'package:get_rotas/standard_navigation/to/page1.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Home PAGE'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage1();
                    },
                    settings: const RouteSettings(name: 'ofPage1')),
              );
            },
            child: const Text('Go to Page 1 With flutter native'),
          ),
          TextButton(
            onPressed: () {
              Get.to(const OffAllPage1());
            },
            child: const Text('Go to Page 1 with GetX'),
          ),
        ],
      )),
    );
  }
}
