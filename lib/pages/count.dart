
import 'package:flutter/material.dart';

import '../fonts/ali.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key, required this.title});

  final String title;

  @override
  State<CountPage> createState() {
    return _CountPageState();
  }
}

class _CountPageState extends State<CountPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
          )),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const MyButton(),
          const SizedBox(height: 20),
          const Icon(AliIcon.home, size: 30, color: Colors.pink),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(color: Colors.orange, blurRadius: 10.0),
                    BoxShadow(color: Colors.pink, blurRadius: 20.0)
                  ],
                  gradient:
                  const RadialGradient(colors: [Colors.red, Colors.pink]),
                  border: Border.all(
                      color: Colors.yellow,
                      width: 10.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  const Text('按钮的点击次数'),
                  Text('$_counter',
                      style: Theme.of(context).textTheme.headlineMedium)
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "计数",
        child: const Icon(Icons.add),
      ),
    );
  }
}


class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      transform: Matrix4.translationValues(0, 0, 0),
      width: 100,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      alignment: Alignment.center,
      child: const Text(
        '按钮',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
