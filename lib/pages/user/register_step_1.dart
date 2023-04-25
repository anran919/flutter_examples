import 'package:flutter/material.dart';
class RegisterStep1Page extends StatefulWidget {
  const RegisterStep1Page({Key? key}) : super(key: key);

  @override
  State<RegisterStep1Page> createState() => _RegisterStep1PageState();
}

class _RegisterStep1PageState extends State<RegisterStep1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册(输入验证码)第二步"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("输入验证码页面"),
            const Text(""),
            const SizedBox(height: 15,),
            ElevatedButton.icon(onPressed: (){
              Navigator.pushReplacementNamed(context, '/register_step2');
            }, icon: const Icon(Icons.password_outlined), label: const Text("输入密码"))
          ],
        ),
      ),
    );
  }
}
