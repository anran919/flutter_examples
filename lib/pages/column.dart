import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column sample'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ContainerWidget(Icons.co2, color: Colors.green),
            ContainerWidget(Icons.icecream, color: Colors.pink),
            ContainerWidget(Icons.house, color: Colors.deepPurple),
            ContainerWidget(Icons.offline_bolt, color: Colors.yellow),
          ],
        ),

      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  IconData icon;
  Color color;

  ContainerWidget(
    this.icon, {
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 150,
      height: 150,
      decoration:  BoxDecoration(color: color),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
