import 'package:flutter/material.dart';

class WrapView extends StatelessWidget {
  const WrapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WrapView"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 200,
        color: Colors.grey,
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            ButtonWidget('按钮1', color: Colors.blue),
            ButtonWidget('按钮2', color: Colors.pinkAccent),
            ButtonWidget('按钮1', color: Colors.greenAccent),
            ButtonWidget('按钮1', color: Colors.purple),
            ButtonWidget('按钮1', color: Colors.orange),
            ButtonWidget('按钮1', color: Colors.redAccent),
            ButtonWidget('按钮1', color: Colors.blue),
            ButtonWidget('按钮1', color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  String text;
  Color color;

  ButtonWidget(this.text, {Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            foregroundColor: const MaterialStatePropertyAll(Colors.white)),
        onPressed: null,
        child: Text(text));
  }
}
