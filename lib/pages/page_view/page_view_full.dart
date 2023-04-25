import 'package:flutter/material.dart';

class FullPageViewPage extends StatefulWidget {
  const FullPageViewPage({Key? key}) : super(key: key);

  @override
  State<FullPageViewPage> createState() => _FullPageViewPageState();
}

class _FullPageViewPageState extends State<FullPageViewPage> {
  final List<Widget> _list = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++) {
      _list.add(Center(
        child: Text(
          "Page${i + 1}",
          style: const TextStyle(fontSize: 20),
        ),
      ));
    }
  }

  void _onPageViewChanged(int index) {
    if(index+2==_list.length){
      setState(() {
        for (int i = 0; i < 10; i++) {
          _list.add(Center(
            child: Text(
              "Page${i + 1}",
              style: const TextStyle(fontSize: 20),
            ),
          ));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("无限循环"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        onPageChanged: _onPageViewChanged,
        children: _list,
      ),
    );
  }
}
