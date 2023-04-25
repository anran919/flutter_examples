import 'package:flutter/material.dart';
import 'package:flutter_example/pages/page_view/page_view.dart';
import 'package:flutter_example/pages/page_view/page_view_builder.dart';
import 'package:flutter_example/pages/page_view/page_view_full.dart';
import 'package:flutter_example/pages/page_view/page_view_swiper.dart';
class PageViewIndexPages extends StatefulWidget {
  const PageViewIndexPages({Key? key}) : super(key: key);

  @override
  State<PageViewIndexPages> createState() => _PageViewIndexPagesState();
}

class _PageViewIndexPagesState extends State<PageViewIndexPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView"),
      ),
      body: Center(
        child: ListView(
          children: [
            ListItem(title: "PageViewHorizontal", page: const PageViewHorizontal()),
            ListItem(title: "PageViewBuilder", page: const PageViewBuilder()),
            ListItem(title: "FullPageViewPage", page: const FullPageViewPage()),
            ListItem(title: "SwiperPageView", page: const SwiperPageView()),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  String title;
  Widget page;

  ListItem({Key? key, required this.page, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return page;
                }));
              },
              child: Text(title)),
        ),
      ],
    );
  }
}
