import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_example/pages/list5.dart';
import 'package:flutter_example/pages/getx_sample/state.dart';
import 'package:flutter_example/pages/getx_sample/test.dart';

import '../news.dart';

class GetXRouterPage extends StatefulWidget {
  const GetXRouterPage({Key? key}) : super(key: key);

  @override
  State<GetXRouterPage> createState() => _GetXRouterPageState();
}

class _GetXRouterPageState extends State<GetXRouterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXRouterPage"),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: ElevatedButton(
                  onPressed: () {
                    Get.to(const MyListView5());
                  },
                  child: const Text("直接路由")),
            ),
            ListTile(
              title: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/appbar_sample');
                  },
                  child: const Text("简单命名路由")),
            ),
            ListTile(
              title: ElevatedButton(
                  onPressed: () {
                    // Get.toNamed("/NextScreen", arguments: 'Get is the best');
                    Get.to(const GetXTestPage(), arguments: 'arguments路由传值');
                  }, child: const Text("arguments路由传值")),
            ),
            ListTile(
              title: ElevatedButton(
                  onPressed: () {
                   Get.toNamed('/get_test_page?name=zar');
                  }, child: const Text("params路由")),
            ),
            ListTile(
              title: ElevatedButton(
                  onPressed: () {}, child: const Text("path命名路由")),
            ),
            ListTile(
              title: ElevatedButton(
                  onPressed: () {
                  }, child: const Text("replace路由")),
            ),
            ListTile(
              title: ElevatedButton(
                  onPressed: () {}, child: const Text("Navigate and pop")),
            ),
            ListTile(
              title:
                  ElevatedButton(onPressed: () {}, child: const Text("删除当前路由")),
            ),
            ListTile(
              title: ElevatedButton(
                  onPressed: () {}, child: const Text("flutter路由")),
            ),
            ListTile(
              title:
                  ElevatedButton(onPressed: () {}, child: const Text("dialog")),
            ),
            ListTile(
              title: ElevatedButton(
                  onPressed: () {}, child: const Text("SnackBar")),
            ),
          ],
        ),
      ),
    );
  }
}
