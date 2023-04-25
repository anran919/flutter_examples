import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_example/r.dart';

class SwiperPageView extends StatefulWidget {
  const SwiperPageView({Key? key}) : super(key: key);

  @override
  State<SwiperPageView> createState() => _SwiperPageViewState();
}

class _SwiperPageViewState extends State<SwiperPageView> {
  List<Widget> _list = [];
  int _index = 0;
  late Timer _timer;
  late PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("自动轮播"),
      ),
      body: SizedBox(
        height: 280,
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                onPageChanged: (index) {
                  setState(() {
                    _index = index % _list.length;
                  });
                },
                itemBuilder: (context, index) {
                  return _list[_index];
                }),
            Positioned(
                left: 0,
                right: 0,
                bottom: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: _index == index ? Colors.green : Colors.grey,
                          shape: BoxShape.circle),
                      width: 10,
                      height: 10,
                    );
                  }),
                ))
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _list = [
      ImageItem(R.assetsImagesA),
      ImageItem(R.assetsImagesB),
      ImageItem(R.assetsImagesC),
    ];
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      _pageController.animateToPage((_index+1) % _list.length, duration: const Duration(microseconds: 1000), curve: Curves.linear);
    });
  }
  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}

class ImageItem extends StatelessWidget {
  String imageName;

  ImageItem(this.imageName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageName,
      fit: BoxFit.cover,
    );
  }
}
