import 'package:flutter/material.dart';

class Statefulsample1 extends StatefulWidget {
  const Statefulsample1({Key? key}) : super(key: key);

  @override
  State<Statefulsample1> createState() => _StatefulsampleState();
}

class _StatefulsampleState extends State<Statefulsample1> {
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
