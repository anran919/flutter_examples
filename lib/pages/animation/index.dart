import 'package:flutter/material.dart';
import 'package:flutter_example/pages/animation/tween_animation.dart';
import 'package:flutter_example/pages/animation/color_tween_animation.dart';
import 'package:flutter_example/pages/animation/curved_animation.dart';
import 'package:flutter_example/pages/animation/animated_container1.dart';
import 'package:flutter_example/pages/animation/animated_container2.dart';
import 'package:flutter_example/pages/animation/animated_opacity.dart';
import 'package:flutter_example/pages/animation/animated_text.dart';
import 'package:flutter_example/pages/animation/animated_switcher.dart';

class AnimationSample extends StatelessWidget {
  const AnimationSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimationSample")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedContainer1();
                    }));
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text("AnimatedContainer")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedContainer2();
                    }));
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text("动画实现侧边栏")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedOpacity1();
                    }));
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text("透明度动画")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedText();
                    }));
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text("文字动画")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedSwitcher1();
                    }));
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text("子元素改变动画")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const TweenAnimation();
                    }));
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text("TweenAnimation")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const ColorTweenAnimation();
                    }));
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text("ColorTweenAnimation")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const CurvedAnimationSample();
                    }));
                  },
                  icon: const Icon(Icons.animation),
                  label: const Text("曲线动画")),
            ),
          ],
        ),
      ),
    );
  }
}
