import 'package:flutter/material.dart';

class StackView2 extends StatelessWidget {
  const StackView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stock View'),
        ),
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.only(top: 80,bottom: 100),
              children: const [
                ListTile(
                  title: Text("我是数据1"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据2"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据3"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据4"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据1"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据1"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据1"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据1"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据1"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据1"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据10"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据11"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是数据12"),
                ),
              ],
            ),
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  color: Colors.greenAccent,
                  child: const Text(
                    '顶部信息',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Positioned(
                bottom: 0,
                // 获取屏幕宽度
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.pink,
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    '底部信息',
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ));
  }
}
