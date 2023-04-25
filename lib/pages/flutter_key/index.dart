import 'package:flutter/material.dart';
import 'package:flutter_example/pages/flutter_key/global_key_demo.dart';
import 'package:flutter_example/pages/flutter_key/local_key_demo.dart';

class FlutterKeyDemo extends StatelessWidget {
  const FlutterKeyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Key Demo"),
      ),
      body: Column(
        children: [
          ListTile(
            title: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LocalKeyDemoPage();
                  }));
                },
                icon: const Icon(Icons.code_sharp),
                label: const Text("LocalKeyDemoPage")),
          ),
          ListTile(
            title: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GlobalKeyDemo();
                  }));
                },
                icon: const Icon(Icons.code_sharp),
                label: const Text("GlobalKeyDemo")),
          )
        ],
      ),
    );
  }
}
