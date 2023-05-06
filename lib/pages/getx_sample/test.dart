import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXTestPage extends StatefulWidget {
  const GetXTestPage({Key? key}) : super(key: key);

  @override
  State<GetXTestPage> createState() => _GetXTestPageState();
}

class _GetXTestPageState extends State<GetXTestPage> {
  @override
  void initState() {
    super.initState();
    if (Get.arguments!=null) {
      print("arguments:${Get.arguments}");
    }
    if (Get.parameters != null) {
      print("parameters:${Get.parameters['name']}");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXTestPage"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('GetXTestPage'),
          ],
        ),
      ),
    );
  }
}
