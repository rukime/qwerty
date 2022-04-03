import 'package:flutter/material.dart';

class PageViewWiget extends StatelessWidget {
  PageViewWiget({Key? key}) : super(key: key);

  final PageController controller = PageController(initialPage: 1);

  Widget block(color, String text) {
    return Container(
      color: color is int ? Color(color) : const Color(0xff000000),
      child: Center(
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        pageSnapping: false,
        physics: const BouncingScrollPhysics(),
        // physics: const NeverScrollableScrollPhysics(),
        // physics: ClampingScrollPhysics(),
        // physics: const FixedExtentScrollPhysics(),
        // RangeMaintainingScrollPhysics
        children: <Widget>[
          block(0xff008000, 'Stop'),
          block(0xffffffff, 'Ready?'),
          block(0xff000000, 'Go!'),
          block('', 'Go!')
        ]);
  }
}
