import 'package:flutter/material.dart';
import 'package:flutter_example/pages/animation/tween_animation.dart';
import 'package:flutter_example/pages/animation/color_tween_animation.dart';
import 'package:flutter_example/pages/animation/curved_animation.dart';
import 'package:flutter_example/pages/animation/animated_container1.dart';
import 'package:flutter_example/pages/animation/animated_container2.dart';
import 'package:flutter_example/pages/animation/animated_opacity.dart';
import 'package:flutter_example/pages/animation/animated_text.dart';
import 'package:flutter_example/pages/animation/animated_switcher.dart';
import 'package:flutter_example/pages/animation/rotation_transition.dart';
import 'package:flutter_example/pages/animation/fade_transition.dart';
import 'package:flutter_example/pages/animation/scale_transition.dart';
import 'package:flutter_example/pages/animation/slide_transition.dart';
import 'package:flutter_example/pages/animation/animated_icon.dart';
import 'package:flutter_example/pages/animation/custom_animated_icon.dart';
import 'package:flutter_example/pages/animation/custom_animated_list.dart';

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
                  icon: const Icon(Icons.slideshow),
                  label: const Text("动画实现侧边栏")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedOpacity1();
                    }));
                  },
                  icon: const Icon(Icons.opacity),
                  label: const Text("透明度动画")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedText();
                    }));
                  },
                  icon: const Icon(Icons.text_increase),
                  label: const Text("文字动画")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedSwitcher1();
                    }));
                  },
                  icon: const Icon(Icons.child_care_outlined),
                  label: const Text("子元素改变动画")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const AnimatedIconPage();
                    }));
                  },
                  icon: const Icon(Icons.ac_unit_sharp),
                  label: const Text("自定义动画-AnimatedIcon")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const CustomAnimatedListPage();
                    }));
                  },
                  icon: const Icon(Icons.list),
                  label: const Text("自定义动画-CustomAnimatedListPage")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const CustomAnimatedIconPage();
                    }));
                  },
                  icon: const Icon(Icons.search_off),
                  label: const Text("显式动画-CustomAnimatedIconPage")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const RotationTransitionPage();
                    }));
                  },
                  icon: const Icon(Icons.rotate_90_degrees_cw),
                  label: const Text("显式动画-RotationTransition")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const FadeTransitionPage();
                    }));
                  },
                  icon: const Icon(Icons.opacity_rounded),
                  label: const Text("显式动画-FadeTransition")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const ScaleTransitionPage();
                    }));
                  },
                  icon: const Icon(Icons.scale),
                  label: const Text("显式动画-ScaleTransition")),
            ), ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  const SlideTransitionPage();
                    }));
                  },
                  icon: const Icon(Icons.door_sliding_rounded),
                  label: const Text("显式动画-SlideTransition")),
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
