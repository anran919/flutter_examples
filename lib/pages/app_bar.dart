import 'package:flutter/material.dart';

class AppbarSample extends StatefulWidget {
  const AppbarSample({Key? key}) : super(key: key);

  @override
  State<AppbarSample> createState() => _AppbarSampleState();
}

class _AppbarSampleState extends State<AppbarSample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.icecream,
            color: Colors.pinkAccent,
          ),
        ),
        title: const Text("AppBar使用"),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_horiz,
                color: Colors.white,
              )),
        ],
        bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.pink,
            controller: _tabController,
            indicatorWeight: 2,
            indicatorPadding: const EdgeInsets.all(0),
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.white,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w400
            ),
            tabs: const [
              Tab(
                child: Text("关注"),
              ),
              Tab(
                child: Text("热门"),
              ),
              Tab(
                child: Text("视频"),
              ),
              Tab(
                child: Text("关注"),
              ),
              Tab(
                child: Text("热门"),
              ),
              Tab(
                child: Text("视频"),
              ),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Center(
          child: Text("关注"),
        ),
        Center(
          child: Text("热门"),
        ),
        Center(
          child: Text("视频"),
        ),
        Center(
          child: Text("关注"),
        ),
        Center(
          child: Text("热门"),
        ),
        Center(
          child: Text("视频"),
        ),
      ]),
    );
  }
}
