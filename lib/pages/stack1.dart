import 'package:flutter/material.dart';

class StackView1 extends StatelessWidget {
  const StackView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock View'),
      ),
      body: ListView(
        children: const [sample1()],
      ),
    );
  }
}

class sample1 extends StatelessWidget {
  const sample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.lightBlue,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              )),
          const Positioned(
            left: 175,
            top: 20,
            child: Text("sample1"),
          ),
        ],
      ),
    );
  }
}
