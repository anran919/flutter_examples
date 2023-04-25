import 'package:flutter/material.dart';

import 'package:flutter_example/widget/my_dialog.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _actionAlert() async {
    var action = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示信息"),
            content: const Text("弹窗的内容信息，你确定要做某事吗？"),
            actions: [
              TextButton(
                  onPressed: () {
                    print("点击了确定按钮");
                    //让弹窗消失
                    Navigator.of(context).pop("confirm");
                  },
                  child: const Text("确定")),
              TextButton(
                  onPressed: () {
                    print("点击了取消按钮");
                    Navigator.of(context).pop("cancel");
                  },
                  child: const Text("取消")),
            ],
          );
        });
    // 获取点击的按钮
    print(action);
  }

  void _selectDialog() async {
    var action = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("请选择您的语言"),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("英语"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("日语"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("中文"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("法语"),
              )
            ],
          );
        });
    print('action : $action');
  }

  void _bottomDialog() async {
    var action = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 300,
            child: Center(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop("颜色");
                    },
                    title: const Text('颜色'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop("尺寸");
                    },
                    title: const Text('尺寸'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop("型号");
                    },
                    title: const Text('型号'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop("套餐");
                    },
                    title: const Text('套餐'),
                  ),
                ],
              ),
            ),
          );
        });
    print('action : $action');
  }

  void _toast() {
    // 此第三方插件不支持macos 仅支持ios Android
    // Fluttertoast.showToast(
    //     msg: "This is Center Short Toast",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Awesome Snackbar!'),
        action: SnackBarAction(
          label: 'Action',
          onPressed: () {
            // Code to execute.
          },
        ),
      ),
    );
  }

  void _myDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return MyDialog(
            title: "提示信息",
            content: "我是弹窗里面的内容！",
            onCloseTap: () {
              print("点击了弹窗的关闭按钮！");
              Navigator.of(context).pop();
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("弹窗示例"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _actionAlert, child: const Text("alert弹窗")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: _selectDialog, child: const Text("select弹窗")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: _bottomDialog, child: const Text("bottom弹窗")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: _toast, child: const Text("toast")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: _myDialog, child: const Text("自定义Dialog")),
          ],
        ),
      ),
    );
  }
}
