import 'package:flutter/material.dart';

class WrapView1 extends StatelessWidget {
  const WrapView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WrapView1"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "热搜",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const Divider(),
            const HotSearch(),
            const Divider(),
            ListTile(
              title: Text(
                "历史",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "历史记录",
                ),
                Divider(),
                Text(
                  "历史记录",
                ),
                Divider(),
                Text(
                  "历史记录",
                ),
                Divider(),
                Text(
                  "历史记录",
                ),
                Divider(),
                Text(
                  "历史记录",
                ),
                Divider(),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: ElevatedButton.icon(
                  onPressed: null,
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.lightBlue)),
                  icon: const Icon(Icons.delete,color: Colors.orange,),
                  label: const Text("清空历史记录")),
            )
          ],
        ),
      ),
    );
  }
}

class HotSearch extends StatelessWidget {
  const HotSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      // alignment: WrapAlignment.center,
      children: [
        ButtonWidget('按钮1', color: Colors.blue),
        ButtonWidget('按钮2', color: Colors.pinkAccent),
        ButtonWidget('按钮1', color: Colors.greenAccent),
        ButtonWidget('按钮1', color: Colors.purple),
        ButtonWidget('按钮1', color: Colors.orange),
        ButtonWidget('按钮1', color: Colors.redAccent),
        ButtonWidget('按钮1', color: Colors.blue),
        ButtonWidget('按钮1', color: Colors.blue),
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  String text;
  Color color;

  ButtonWidget(this.text, {Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            foregroundColor: const MaterialStatePropertyAll(Colors.white)),
        onPressed: null,
        child: Text(text));
  }
}
