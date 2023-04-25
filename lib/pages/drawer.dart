import 'package:flutter/material.dart';
import 'package:flutter_example/r.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('抽屉组件'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(R.assetsImagesA),fit: BoxFit.cover)
                      ),
                    )
                ),
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("个人中心"),
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.add_reaction),
              ),
              title: Text("地址"),
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置"),
            )
          ],
        ),
      ),
    );
  }
}
