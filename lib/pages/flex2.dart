import 'package:flutter/material.dart';
import 'package:flutter_example/r.dart';

class FlexSample2 extends StatelessWidget {
  const FlexSample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('FlexSample2'),
      ),
      body: ListView(
        children: const [
          ListItem(),
          ListItem(),
          ListItem(),
          ListItem(),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.greenAccent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.black,
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: double.infinity,
                      child: Image.asset(
                        R.assetsImagesA,
                        fit: BoxFit.cover,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: double.infinity,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                R.assetsImagesA,
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                R.assetsImagesA,
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
