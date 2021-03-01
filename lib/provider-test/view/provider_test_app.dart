import 'package:flutter/material.dart';
import 'provider_test_home.dart';

class ProviderTestApp extends StatelessWidget {
  const ProviderTestApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Test App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ProviderTestHome(),
    );
  }
}
