import 'package:flutter/material.dart';

import 'package:flutter_example/router.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '这是测试',
      theme: ThemeData(primarySwatch: Colors.blue,useMaterial3: true),
      // home: const HomePage(title: '首页'));
      initialRoute: initialRoute,
      //---------- 命名路由第1种方式 start ----------
      // routes: routes,
      // routes: {
      //   "/": (context) => const Routesample(),
      //   "/appbar_sample": (context) => const Appbarsample1(),
      //   "/account": (context) => const UserAccountDraw(),
      // },
      //---------- 命名路由第1种方式 end ----------
      // ---------- 命名路由第2种方式 start  ----------
      //命名路由传值第二步
      onGenerateRoute: onGenerateRoute,
      //---------- 命名路由第2种方式 end ----------
    );
  }
}
