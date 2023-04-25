import 'package:flutter/material.dart';

class PageViewHorizontal extends StatelessWidget {
  const PageViewHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("PageView"),
      ),
      body: PageView(
        // scrollDirection: Axis.horizontal,
        scrollDirection: Axis.vertical,
        children: const  [
          Center(
            child: Text("Page1"),
          ),
          Center(
            child: Text("Page2"),
          ),
          Center(
            child: Text("Page3"),
          ),
          Center(
            child: Text("Page4"),
          ),
        ],
      ),
    );
  }
}
