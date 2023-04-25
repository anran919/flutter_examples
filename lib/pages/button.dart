import 'package:flutter/material.dart';

class Buttonsample extends StatelessWidget {
  const Buttonsample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮使用'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          ElevatedButton(
            onPressed: () => {},
            child: const Text('普通按钮'),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(onPressed: () => {}, child: const Text('文本按钮')),
          const SizedBox(
            height: 10,
          ),
          const OutlinedButton(onPressed: null, child: Text('边框按钮')),
          const SizedBox(
            height: 10,
          ),
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.ac_unit_sharp,
                color: Colors.pink,
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: null,
              icon: const Icon(
                Icons.send,
                color: Colors.pink,
              ),
              label: const Text('发送')),
          const SizedBox(
            height: 10,
          ),
          TextButton.icon(
              onPressed: null,
              icon: const Icon(
                Icons.share,
                color: Colors.blue,
              ),
              label: const Text('分享')),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
              onPressed: null,
              icon: const Icon(
                Icons.abc_sharp,
                color: Colors.deepPurple,
              ),
              label: const Text('边框按钮带图标')),
          const SizedBox(
            height: 10,
          ),
          const ElevatedButton(onPressed: null,style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
            foregroundColor: MaterialStatePropertyAll(Colors.white)
          ), child: Text('设置按钮的背景和文字颜色'),),
          const SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}
