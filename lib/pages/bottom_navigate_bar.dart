import 'package:flutter/material.dart';


class BottomNavigateView extends StatefulWidget {
  const BottomNavigateView({Key? key}) : super(key: key);

  @override
  State<BottomNavigateView> createState() => _BottomNavigateViewState();
}

class _BottomNavigateViewState extends State<BottomNavigateView> {
  int _index = 0;
  final List<Widget> _pages =const [ HomePage(), CategoryPage(),MessagePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("底部导航"),
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        // 超过三个item需要设置  type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(label: "首页", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "分类", icon: Icon(Icons.ac_unit_sharp)),
          BottomNavigationBarItem(label: "消息", icon: Icon(Icons.message)),
          BottomNavigationBarItem(label: "设置", icon: Icon(Icons.settings)),
        ],),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("首页"),
    );
  }
}

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("分类"),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("设置"),
    );
  }
}

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("消息"),
    );
  }
}

