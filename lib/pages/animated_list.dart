import 'package:flutter/material.dart';

class AnimatedListPage extends StatefulWidget {
  const AnimatedListPage({Key? key}) : super(key: key);

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  static final List<String> _list = [];
  final _alsKey = GlobalKey<AnimatedListState>();

  Widget _buildItem(index) {
    return ListTile(
      title: Text(
        _list[index],
        style: const TextStyle(color: Colors.green),
      ),
      trailing: IconButton(
          onPressed: () {
            _deleteItem(index);
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.orange,
          )),
    );
  }

  void _deleteItem(index) {
    _list.removeAt(index); // 从数组中删除
    _alsKey.currentState!.removeItem(index, (context, animation) {
      return FadeTransition(
        opacity: animation,
        child: _buildItem(index), // 删除时执行动画的元素
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedListPage"),
      ),
      body: AnimatedList(
        key: _alsKey,
        initialItemCount: _list.length,
        itemBuilder: (context, index, animation) {
          return FadeTransition(
            opacity: animation,
            child: Column(
              children: [
                Visibility(
                  visible: index == 0,
                  child: const Divider(),
                ),
                _buildItem(index),
                const Divider(),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _list.add('我是新增的数据');
          _alsKey.currentState!.insertItem(_list.length - 1);
        },
      ),
    );
  }
}
