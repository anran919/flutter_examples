import 'package:flutter/material.dart';
import 'package:flutter_example/r.dart';

class UserAccountDraw extends StatelessWidget {
  const UserAccountDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('显示用户信息的抽屉'),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(R.assetsImagesA),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage(R.assetsImagesA),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(R.assetsImagesA),
                  )
                ],
                otherAccountsPicturesSize: Size.square(30),
                accountName: Text('用户名'),
                accountEmail: Text("flutter@google.com")),
            ListTile(
              title: Text("ListTile Item"),
            ),
            Divider(),
            ListTile(
              title: Text("ListTile Item"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
