import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册(输入手机号)第一步"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("注册页面-输入手机号"),
            const SizedBox(height: 15,),
            ElevatedButton.icon(onPressed: (){
              Navigator.pushReplacementNamed(context, '/register_step1');
            }, icon: const Icon(Icons.sms), label: const Text("输入验证码"))
          ],
        ),
      ),
    );
  }
}
