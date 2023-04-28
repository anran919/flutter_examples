import 'package:flutter/material.dart';

class StatefulSample1 extends StatefulWidget {
  const StatefulSample1({Key? key}) : super(key: key);

  @override
  State<StatefulSample1> createState() => _StatefulSampleState();
}

class _StatefulSampleState extends State<StatefulSample1> {
  final List<Widget> _list = [
    Column(children: const [
      ListTile(
        title: Text("Item1"),
      ),
      Divider(),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefulsample'),
      ),
      body: ListView(
        children: _list.map((value){
          return value;
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _list.add(
              Column(children: const [
                ListTile(
                  title: Text("Item1"),
                ),
                Divider(),
              ]),
            );
          });
        },
        child: const Icon(Icons.deblur_outlined),
      ),
    );
  }
}
