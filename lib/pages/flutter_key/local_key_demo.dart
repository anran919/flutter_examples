import 'package:flutter/material.dart';

/// Flutter 中key的作用，当前示例如果不给item设置唯一的key，调整list顺序，item里面的值会改变，单item的位置不会改变，
/// 解决办法 给item设置key
class LocalKeyDemoPage extends StatefulWidget {
  const LocalKeyDemoPage({Key? key}) : super(key: key);

  @override
  State<LocalKeyDemoPage> createState() => _KeyDemoPageState();
}

class _KeyDemoPageState extends State<LocalKeyDemoPage> {
  List<Widget> _list = [];

  @override
  void initState() {
    _list = [
      Box(
        color: Colors.yellow,
        key: const ValueKey('1'),
      ),
      Box(
        color: Colors.pink,
        //UniqueKey 是随机生成的
        key: UniqueKey(),
      ),
      Box(
        color: Colors.blue,
        key: const ValueKey('3'),
      )
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///  获取屏幕的旋转方向
    print('获取屏幕的旋转方向: ${MediaQuery.of(context).orientation}');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter key demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _list,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _list.shuffle();
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class Box extends StatefulWidget {
  Color color;

  Box({Key? key, this.color = Colors.blueAccent}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(widget.color)),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Text(
          "$_count",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
