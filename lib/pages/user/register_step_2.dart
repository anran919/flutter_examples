import 'package:flutter/material.dart';

class RegisterStep2Page extends StatefulWidget {
  const RegisterStep2Page({Key? key}) : super(key: key);

  @override
  State<RegisterStep2Page> createState() => _RegisterStep2PageState();
}

class _RegisterStep2PageState extends State<RegisterStep2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册(输入密码第三步)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("输入密码页面"),
            const Text(""),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                icon: const Icon(Icons.verified_user),
                label: const Text("返回登录页面")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                icon: const Icon(Icons.icecream_outlined),
                label: const Text("返回到根页面"))
          ],
        ),
      ),
    );
  }
}
