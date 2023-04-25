import 'package:flutter/material.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('card view'),
      ),
      body: ListView(
        children: const [
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 10,
      color: Colors.red[400],
      margin: const EdgeInsets.all(10),
      child: Column(
        children: const [
          ListTile(
            title: Text('张三',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            subtitle: Text('高级Android开发工程师'),
          ),
          ListTile(
            title: Text('地址'),
            subtitle: Text('广东省广州市番禺区余华大道长征路'),
          )
        ],
      ),
    );
  }
}
