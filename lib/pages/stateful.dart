import 'package:flutter/material.dart';

class StatefulSample extends StatefulWidget {
  const StatefulSample({Key? key}) : super(key: key);

  @override
  State<StatefulSample> createState() => _StatefulsSmpleState();
}

class _StatefulsSmpleState extends State<StatefulSample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefulsample'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$_count"),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                icon: const Icon(Icons.add),
                label: const Text('累加'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count--;
          });
        },
        child: const Icon(Icons.deblur_outlined),
      ),
    );
  }
}
