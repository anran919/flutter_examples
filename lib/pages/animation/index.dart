import 'package:flutter/material.dart';
import 'package:flutter_example/pages/animation/tween_animation.dart';
import 'package:flutter_example/pages/animation/color_tween_animation.dart';
import 'package:flutter_example/pages/animation/curved_animation.dart';

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
