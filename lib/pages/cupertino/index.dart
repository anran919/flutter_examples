import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  const CupertinoPage({Key? key}) : super(key: key);

  @override
  State<CupertinoPage> createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("这是标题"),
        previousPageTitle: "返回",
      ) ,
        child: Center(
      child: Text("CupertinoPage"),
    ));
  }
}
