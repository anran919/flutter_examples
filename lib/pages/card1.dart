import 'package:flutter/material.dart';
import 'package:flutter_example/r.dart';

class MyCardView1 extends StatelessWidget {
  const MyCardView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('card view'),
      ),
      body: ListView(
        children: const [
          ListItem(),
          ListItem(),
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

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(R.assetsImagesA),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(R.assetsImagesA),
            ),
            title: Text('姓名'),
            subtitle: Text('描述信息'),
          )
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
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                R.assetsImagesA,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  foregroundImage: AssetImage(R.assetsImagesA),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 80,
                    child: ListTile(
                      title: Text('姓名'),
                      subtitle: Text('描述信息'),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
