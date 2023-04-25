import 'package:flutter/material.dart';

class PageViewBuilder extends StatefulWidget {
  const PageViewBuilder({Key? key}) : super(key: key);

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageViewBuilder'),
      ),
      body: PageView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
            return  Center(
              child: Text("Page$index",style: Theme.of(context).textTheme.titleMedium,),
            );
          }),
    );
  }
}
