import 'package:flutter/material.dart';

import 'home/page_view_wiget.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StateLessWiget'),
        ),
        body: PageViewWiget(),
      ),
    );
  }
}
