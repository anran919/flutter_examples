import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  int id;
  String content;
  late Map arguments = {};

  NewsPage(this.id,
      {Key? key, this.content = '等待传值', this.arguments = const {}})
      : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('获取传值：id=${widget.id}');
    print('命名路由传递的值：id=${widget.arguments}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("新闻信息"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.content),
            Text("命名路由传递的值${widget.arguments}"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
