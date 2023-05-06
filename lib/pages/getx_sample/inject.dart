import 'package:flutter/material.dart';

class GetXInjectPage extends StatefulWidget {
  const GetXInjectPage({Key? key}) : super(key: key);

  @override
  State<GetXInjectPage> createState() => _GetXGetXInjectPageState();
}

class _GetXGetXInjectPageState extends State<GetXInjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXInjectPage"),
      ),
      body: const Center(
        child:  Text('GetXInjectPage'),
      ),
    );
  }
}
