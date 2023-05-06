import 'package:flutter/material.dart';
import 'package:flutter_example/pages/list.dart';
import 'package:flutter_example/pages/list1.dart';
import 'package:flutter_example/pages/list2.dart';
import 'package:flutter_example/pages/list3.dart';
import 'package:flutter_example/pages/list4.dart';
import 'package:flutter_example/pages/list5.dart';
import 'package:flutter_example/pages/grid.dart';
import 'package:flutter_example/pages/grid2.dart';
import 'package:flutter_example/pages/grid3.dart';
import 'package:flutter_example/pages/row.dart';
import 'package:flutter_example/pages/column.dart';
import 'package:flutter_example/pages/flex.dart';
import 'package:flutter_example/pages/flex1.dart';
import 'package:flutter_example/pages/flex2.dart';
import 'package:flutter_example/pages/stack.dart';
import 'package:flutter_example/pages/stack1.dart';
import 'package:flutter_example/pages/stack2.dart';
import 'package:flutter_example/pages/aspect_ratio.dart';
import 'package:flutter_example/pages/card.dart';
import 'package:flutter_example/pages/card1.dart';
import 'package:flutter_example/pages/button.dart';
import 'package:flutter_example/pages/button1.dart';
import 'package:flutter_example/pages/wrap.dart';
import 'package:flutter_example/pages/wrap1.dart';
import 'package:flutter_example/pages/stateful.dart';
import 'package:flutter_example/pages/stateful1.dart';
import 'package:flutter_example/pages/bottom_navigate_bar.dart';
import 'package:flutter_example/pages/floating_action_button.dart';
import 'package:flutter_example/pages/drawer.dart';
import 'package:flutter_example/pages/user_account_drawer.dart';
import 'package:flutter_example/pages/app_bar.dart';
import 'package:flutter_example/pages/app_bar1.dart';
import 'package:flutter_example/pages/route.dart';
import 'package:flutter_example/pages/dialog/dialog.dart';
import 'package:flutter_example/pages/page_view/index.dart';
import 'package:flutter_example/pages/flutter_key/index.dart';
import 'package:flutter_example/pages/cupertino/index.dart';
import 'package:flutter_example/pages/animated_list.dart';
import 'package:flutter_example/pages/animated_list1.dart';
import 'package:flutter_example/pages/animation/index.dart';
import 'package:flutter_example/pages/text_field.dart';
import 'package:flutter_example/pages/getx_sample/index.dart';


class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("示例导航"),
      ),
      body: Center(
        child: ListView(
          children: [
            ListItem(title: "dialog", page: const DialogPage()),
            ListItem(
                title: "MyListView",
                page: const MyListView(
                  title: "列表示例",
                )),
            ListItem(title: "MyListView1", page: const MyListView1()),
            ListItem(title: "MyListView2", page: const MyListView2()),
            ListItem(title: "MyListView3", page: const MyListView3()),
            ListItem(title: "MyListView4", page: const MyListView4()),
            ListItem(title: "MyListView5", page: const MyListView5()),
            ListItem(title: "GridView1", page: const GridView1()),
            ListItem(title: "GridView2", page: const GridView2()),
            ListItem(title: "GridView3", page: const GridView3()),
            ListItem(title: "RowView", page: const RowView()),
            ListItem(title: "ColumnView", page: const ColumnView()),
            ListItem(title: "FlexSample", page: const FlexSample()),
            ListItem(title: "FlexSample1", page: const FlexSample1()),
            ListItem(title: "FlexSample2", page: const FlexSample2()),
            ListItem(title: "StackView", page: const StackView()),
            ListItem(title: "StackView1", page: const StackView1()),
            ListItem(title: "StackView2", page: const StackView2()),
            ListItem(title: "AspectRatioView", page: const AspectRatioView()),
            ListItem(title: "MyCardView", page: const MyCardView()),
            ListItem(title: "MyCardView1", page: const MyCardView1()),
            ListItem(title: "ButtonSample", page: const ButtonSample()),
            ListItem(title: "ButtonSample1", page: const ButtonSample1()),
            ListItem(title: "WrapView", page: const WrapView()),
            ListItem(title: "WrapView1", page: const WrapView1()),
            ListItem(title: "StatefulSample", page: const StatefulSample()),
            ListItem(title: "StatefulSample1", page: const StatefulSample1()),
            ListItem(title: "BottomNavigateView", page: const BottomNavigateView()),
            ListItem(title: "FloatingActionButtonSample", page: const FloatingActionButtonSample()),
            ListItem(title: "DrawerView", page: const DrawerView()),
            ListItem(title: "UserAccountDraw", page: const UserAccountDraw()),
            ListItem(title: "AppbarSample", page: const AppbarSample()),
            ListItem(title: "AppbarSample1", page: const AppbarSample1()),
            ListItem(title: "RouteSample", page: const RouteSample()),
            ListItem(title: "PageViews", page: const PageViewIndexPages()),
            ListItem(title: "TextPage", page: const TextPage()),
            ListItem(title: "Flutter Key ", page: const FlutterKeyDemo()),
            ListItem(title: "CupertinoPage ", page: const CupertinoPage()),
            ListItem(title: "AnimatedList ", page: const AnimatedListPage()),
            ListItem(title: "AnimatedList1 ", page: const AnimatedListSample()),
            ListItem(title: "AnimationSample ", page: const AnimationSample()),
            ListItem(title: "GetX ", page: const GetXSamplePage()),
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
