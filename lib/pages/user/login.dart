import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const SizedBox(height: 15,),
            const Text("登录页面"),
            const SizedBox(height: 15,),
            ElevatedButton.icon(onPressed: (){
              Navigator.pushReplacementNamed(context, '/register');
            }, icon: const Icon(Icons.phone_iphone), label: const Text("去注册"))
          ],
        ),
      ),
    );
  }
}
