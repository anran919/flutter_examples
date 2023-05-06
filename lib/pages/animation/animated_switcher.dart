import 'package:flutter/material.dart';

class AnimatedSwitcher1 extends StatefulWidget {
  const AnimatedSwitcher1({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcher1> createState() => _AnimatedSwitcher1State();
}

class _AnimatedSwitcher1State extends State<AnimatedSwitcher1> {
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              _flag = !_flag;
            });
          }),
      body: Center(
          child: Container(
        // color: Colors.cyan,
        height: 300,
        width: 300,
        alignment: Alignment.center,
        // 当组件改变的时候执行动画,例如下面CircularProgressIndicator 改变为FlutterLogo
        //  如果不改变组件,只改变组件内容,需要实现动画: 给组件设置key属性
        child: AnimatedSwitcher(
          // 自定义动画,改变默认的动画效果
          transitionBuilder: (child, animation) {
            // 方式一: 缩放动画
            // return ScaleTransition(
            //   scale: animation,
            //   child: child,
            // );
            //
            // 方式二: 多个动画叠加,缩放动画加淡入淡出动画
            return ScaleTransition(
              scale: animation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          duration: const Duration(milliseconds: 500),
          child: _flag
              ? const CircularProgressIndicator()
              : const FlutterLogo(
                  size: 300,
                ),
        ),
      )),
    );
  }
}
