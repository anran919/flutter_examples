import 'package:flutter/material.dart';
import 'package:flutter_example/tools/keep_alive.dart';
class AppbarSample1 extends StatefulWidget {
  const AppbarSample1({Key? key}) : super(key: key);

  @override
  State<AppbarSample1> createState() => _AppbarSample1State();
}

class _AppbarSample1State extends State<AppbarSample1>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  final List<Widget> _list = [
    const HomePage(),
    const Center(
      child: Text("新闻"),
    ),
    const Center(
      child: Text("设置"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_index],
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.search),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.more_horiz),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("底部导航加顶部tab"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "新闻"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: "视频"),
          ]),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    //  监听tabController的改变
    _tabController.addListener(() {
      if (_tabController.animation?.value == _tabController.index) {
        print('监听tabController的改变方式一${_tabController.index}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 隐藏appbar 方式一
      // appBar: PreferredSize(
      //     preferredSize: const Size.fromHeight(50),
      //     child: AppBar(
      //       bottom: TabBar(controller: _tabController, tabs: const [
      //         Tab(
      //           child: Text("关注"),
      //         ),
      //         Tab(
      //           child: Text("热搜"),
      //         ),
      //         Tab(
      //           child: Text("推荐"),
      //         )
      //       ]),
      //     )),
      // 隐藏appbar 方式二
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 0,
        bottom: TabBar(
            controller: _tabController,
            onTap: (index) {
              //只能监听到点击，不能监听到滑动
              print('监听tabController的改变方式二${_tabController.index}');
            },
            tabs: const [
              Tab(
                child: Text("关注"),
              ),
              Tab(
                child: Text("热搜"),
              ),
              Tab(
                child: Text("推荐"),
              )
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        const Center(
          child: Text("关注"),
        ),
        Center(
          child: KeepAliveWrapper(
            child: ListView(
              children: const [
                ListTile(
                  title: Text("热门1"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门2"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门3"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门4"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门5"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门6"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门7"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门8"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门9"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门10"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门11"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门12"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门13"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门14"),
                ),
                Divider(),
                ListTile(
                  title: Text("热门15"),
                ),
                Divider(),

              ],
            ),
          ),
        ),
        const Center(
          child: Text("视频"),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
    //销毁监听事件
    _tabController.dispose();
  }
}
