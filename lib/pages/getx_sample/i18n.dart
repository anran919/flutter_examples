import 'package:flutter/material.dart';

class GetXI18nPage extends StatefulWidget {
  const GetXI18nPage({Key? key}) : super(key: key);

  @override
  State<GetXI18nPage> createState() => _GetXGetXI18nPageState();
}

class _GetXGetXI18nPageState extends State<GetXI18nPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXI18nPage"),
      ),
      body: const Center(
        child:  Text('GetXI18nPage'),
      ),
    );
  }
}
