import 'package:flutter/material.dart';
import 'package:flutter_example/tools/seek_bar.dart';

class GlobalKeyDemo extends StatefulWidget {
  const GlobalKeyDemo({Key? key}) : super(key: key);

  @override
  State<GlobalKeyDemo> createState() => _GlobalKeyDemoState();
}

class _GlobalKeyDemoState extends State<GlobalKeyDemo> {
  final GlobalKey _gKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GlobalKeyDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  var boxState = _gKey.currentState as _BoxState;
                  print('boxState._count : ${boxState._count}');
                },
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text('获取子组件的state')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  var boxState = _gKey.currentState as _BoxState;
                  setState(() {
                    boxState._count++;
                  });
                },
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text('修改子组件的的state')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  var boxState = _gKey.currentState as _BoxState;
                  boxState.run();
                },
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text('修改子组件的的方法')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  var boxWidget = _gKey.currentWidget as Box;
                  print('boxWidget.color: ${boxWidget.color}');
                },
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text('获取子组件的widget')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  var renderBox =
                      _gKey.currentContext!.findRenderObject() as RenderBox;
                  print('renderBox : ${renderBox.size}');
                },
                icon: const Icon(Icons.ac_unit_sharp),
                label: const Text('获取子组件的渲染属性')),
            const SizedBox(
              height: 10,
            ),
            Box(key: _gKey)
          ],
        ),
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
  void run() {
    SeekBar().show(context, "____run_____");
  }

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
