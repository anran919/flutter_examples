import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('row sample'),
      ),
      body: Container(
        color: Colors.white,
        //设置无限大，使其沾满屏幕
        height: double.infinity,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ContainerIcon(Icons.icecream, color: Colors.orange),
            ContainerIcon(Icons.chat, color: Colors.yellow),
            ContainerIcon(Icons.search_rounded, color: Colors.pink),
            ContainerIcon(Icons.icecream, color: Colors.green),
          ],
        ),
      ),
    );
  }
}

class ContainerIcon extends StatelessWidget {
  IconData icon;
  Color color;
  // ContainerIcon( this.icon,{Key? key,required this.color}) : super(key: key);
  ContainerIcon( this.icon,{Key? key, this.color = Colors.black26}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration:  BoxDecoration(color:Colors.blue),
      child:  Icon(icon,color:color),
    );
  }
}

