import 'package:flutter/material.dart';
import 'package:search_appbar_tool/package.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        controller: controller,
        callBack: (value) {},
      ),
      body: DefaultBody(
        defaultBody: Center(
          child: const Text('Default Body'),
        ),
        normalSearchBody: Center(
          child: const Text('Normal Search Body'),
        ),
        defaultSearchBody: Center(
          child: const Text('Default Search Body'),
        ),
      ),
    );
  }
}
