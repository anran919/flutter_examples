import 'package:flutter/material.dart';
import 'package:flutter_example/r.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          const ListTile(
            title: Text('这是一个列表'),
            subtitle: Text('这是副标题'),
            leading: Icon(Icons.home, color: Colors.pink),
            trailing: Icon(Icons.chevron_right_sharp, color: Colors.pink),
          ),
          const Divider(),
          const ListTile(
            title: Text('这是一个列表'),
            subtitle: Text('这是副标题'),
            leading: Icon(
              Icons.payment,
              color: Colors.green,
            ),
            trailing: Icon(Icons.chevron_right_sharp, color: Colors.green),
          ),
          const Divider(),
          const ListTile(
            title: Text('这是一个列表'),
            subtitle: Text('这是副标题'),
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            trailing: Icon(Icons.chevron_right_sharp, color: Colors.blue),
          ),
          const Divider(),
          ListTile(
            title: const Text('这是一个列表'),
            subtitle: const Text('这是副标题'),
            leading: Image.asset(R.assetsImagesA,
                width: 50, height: 50, fit: BoxFit.cover),
            trailing:
                const Icon(Icons.chevron_right_sharp, color: Colors.orange),
          ),
          const Divider()
        ],
      ),
    );
  }
}
