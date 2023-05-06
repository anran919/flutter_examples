import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_example/pages/getx_sample/router.dart';
import 'package:flutter_example/pages/getx_sample/state.dart';
import 'package:flutter_example/pages/getx_sample/i18n.dart';
import 'package:flutter_example/pages/getx_sample/inject.dart';
class GetXSamplePage extends StatefulWidget {
  const GetXSamplePage({Key? key}) : super(key: key);

  @override
  State<GetXSamplePage> createState() => _GetXSamplePageState();
}

class _GetXSamplePageState extends State<GetXSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXSample"),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GetXRouterPage();
                    }));
                  },
                  icon: const Icon(Icons.router),
                  label: const Text("Router")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GetXStatePage();
                    }));
                  },
                  icon: const Icon(Icons.data_object),
                  label: const Text("State")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GetXInjectPage();
                    }));
                  },
                  icon: const Icon(Icons.downhill_skiing),
                  label: const Text("inject")),
            ),
            ListTile(
              title: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const GetXI18nPage();
                    }));
                  },
                  icon: const Icon(Icons.language),
                  label: const Text("i18")),
            ),
          ],
        ),
      ),
    );
  }
}
