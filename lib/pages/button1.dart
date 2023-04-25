import 'package:flutter/material.dart';

class Buttonsample1 extends StatelessWidget {
  const Buttonsample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('设置按钮的宽高'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 100,
                  height: 50,
                  child: const ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.lightBlue)),
                    child: Text('普通按钮'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text('普通按钮1'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                        onPressed: null,
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        icon: const Icon(
                          Icons.login,
                          color: Colors.green,
                        ),
                        label: const Text(
                          '登录',
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    onPressed: null,
                    child: const Text('圆角按钮'))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.grey,
                  width: 300,
                  height: 300,
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.cyan),
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStateProperty.all(const CircleBorder(
                                side: BorderSide(
                                    color: Colors.pinkAccent, width: 1)))),
                        onPressed: null,
                        child: const Text('圆形按钮')),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
