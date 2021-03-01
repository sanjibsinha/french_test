import 'package:flutter/material.dart';
import 'different_model_pages.dart';

class ProviderTestHome extends StatelessWidget {
  const ProviderTestHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Test'),
      ),
      body: DifferentModelPages(),
    );
  }
}
