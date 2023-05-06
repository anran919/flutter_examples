import 'package:flutter/material.dart';
import 'package:flutter_example/pages/dialog/dialog.dart';
import 'package:flutter_example/pages/user/login.dart';
import 'package:flutter_example/pages/user/register.dart';
import 'package:flutter_example/pages/user/register_step_1.dart';
import 'package:flutter_example/pages/user/register_step_2.dart';
import 'package:flutter_example/pages/user_account_drawer.dart';
import 'package:flutter_example/pages/news.dart';
import 'package:flutter_example/pages/app_bar1.dart';
import 'package:flutter_example/pages/count.dart';
import 'package:flutter_example/pages/home.dart';
import 'package:flutter_example/pages/getx_sample/test.dart';
const String initialRoute = '/';

//命名路由传值第一步
Map<String, WidgetBuilder> routes = {
  "/": (context) => const HomePages(),
  "/appbar_sample": (context) => const AppbarSample1(),
  "/count": (context) => const CountPage(title: "计数",),
  "/account": (context) => const UserAccountDraw(),
  "/news": (context, {arguments}) => NewsPage(345, arguments: arguments),
  "/login": (context) => const LoginPage(),
  "/register": (context) => const RegisterPage(),
  "/register_step1": (context) => const RegisterStep1Page(),
  "/register_step2": (context) => const RegisterStep2Page(),
  "/dialog": (context) => const DialogPage(),
  "/get_test_page": (context) => const GetXTestPage(),
};


var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};