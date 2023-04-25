import 'package:flutter/material.dart';

class FloatingActionButtonsample extends StatefulWidget {
  const FloatingActionButtonsample({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonsample> createState() => _FloatingActionButtonsampleState();
}

class _FloatingActionButtonsampleState extends State<FloatingActionButtonsample> {
  int _index = 0;
  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    MessagePage(),
    PersonPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("底部导航"),
      ),
      body: _pages[_index],
      floatingActionButton: Container(
        width: 60,
        height: 60,

        padding: const EdgeInsets.all(5),
        //将按钮向下移动
        margin: const EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(30)
        ),
        child: FloatingActionButton(
          backgroundColor: _index==2 ? Colors.pinkAccent: Colors.blue,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _index = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
          BottomNavigationBarItem(label: "个人", icon: Icon(Icons.person)),
          BottomNavigationBarItem(label: "设置", icon: Icon(Icons.settings)),
        ],
      ),
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

class PersonPage extends StatelessWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("个人"),
    );
  }
}

