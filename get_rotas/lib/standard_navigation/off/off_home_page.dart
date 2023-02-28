import 'package:flutter/material.dart';

class OffHomePage extends StatelessWidget {

  const OffHomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Off HOME'),),
           body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const BackPage1();
                    },
                  ),
                );
              },
              child: const Text('Go to Page com Flutter Nativo')),
          TextButton(
            onPressed: () {
              Get.to(const BackPage1());
            },
            child: const Text('Go to Page com GETX'),
          ),
        ]),
      ),
       );
  }
}