import 'package:flutter/material.dart';

import 'first_page.dart';
import 'second_page.dart';

class DifferentModelPages extends StatelessWidget {
  const DifferentModelPages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: FirstPage(),
            ),
          ),
        ),
        VerticalDivider(
          width: 20.0,
          thickness: 5.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SecondPage(),
            ),
          ),
        ),
      ],
    );
  }
}
