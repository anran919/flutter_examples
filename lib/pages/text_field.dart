import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextPage"),
      ),
      body: Center(
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(label: Text("用户名"), hintText: '请输入用户名'),
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text("密码"),
                  border: OutlineInputBorder(),
                  hintText: '请输入密码'),
            )
          ],
        ),
      ),
    );
  }
}
