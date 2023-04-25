import 'package:flutter/material.dart';
import 'package:flutter_example/pages/app_bar1.dart';
import 'package:flutter_example/pages/grid3.dart';
import 'package:flutter_example/pages/wrap1.dart';
import 'package:flutter_example/pages/news.dart';

class RouteSample extends StatelessWidget {
  const RouteSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("普通路由"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AppbarSample1();
                  }));
                },
                child: const Text("跳转AppBarsample")),
          ),
          const Divider(),
          ListTile(
            title: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const GridView3();
                  }));
                },
                child: const Text("跳转grid3")),
          ),
          const Divider(),
          ListTile(
            title: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const WrapView1();
                  }));
                },
                child: const Text("跳转wrap1")),
          ),
          const Divider(),
          ListTile(
            title: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NewsPage(601,content: "我是传递的值",);
                  }));
                },
                child: const Text("跳转到row，并传值")),
          ),
          const Divider(),
          ListTile(
            title: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NewsPage(601,content: "我是普通路由传递的值",arguments: const {"value":'我只命名路由传递的值'},);
                  }));
                },
                child: const Text("命名路由跳转row传值")),
          ),
          const Divider(),
          ListTile(
            title: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/appbar_sample');
                },
                child: const Text("命名路由跳转")),
          ),
          const Divider(),
          ListTile(
            title: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text("登录")),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
