import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXStatePage extends StatefulWidget {
  const GetXStatePage({Key? key}) : super(key: key);

  @override
  State<GetXStatePage> createState() => _GetXRStatePageState();
}

class _GetXRStatePageState extends State<GetXStatePage> {
  @override
  void initState() {
    super.initState();
    // print(Get.parameters['name']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXStatePage"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('GetXStatePage'),
            Text(Get.arguments),
          ],
        ),
      ),
    );
  }
}
