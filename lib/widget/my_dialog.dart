import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  final String title;
  final String content;
  final Function()? onCloseTap;

  const MyDialog(
      {Key? key,
      required this.title,
      required this.content,
      required this.onCloseTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //建议使用Material作为自定义组件的根组件
    return Material(
      // 设置背景透明
      type: MaterialType.transparency,
      //包裹Center组件，不然会显示为全屏
      child: Center(
        child: Container(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: onCloseTap,
                      child: const Icon(Icons.close),
                    ),
                  )
                ],
              ),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: Text(content),
              )
            ],
          ),
        ),
      ),
    );
  }
}
