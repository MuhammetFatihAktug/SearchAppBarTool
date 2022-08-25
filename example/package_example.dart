import 'package:flutter/material.dart';
import 'package:search_appbar_tool/search_appbar_tool.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(),
      ),
      home: Scaffold(
        appBar: SearchAppBar(
          fillColor: Colors.green,
          prefixIconColor: Colors.black,
          suffixIconColor: Colors.black,
          leadingIconBtnColor: Colors.black,
          inputBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          controller: controller,
          callBack: (value) {
            print(value);
          },
        ),
        body: DefaultBody(
          defaultSearchBody: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Recent',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                Divider(),
                Text(
                  'Suggestions',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          normalSearchBody: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Search Result',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                Divider(),
                Text(
                  'Found Result',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                Divider(),
                Text(
                  'Not Found Result',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          defaultBody: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Main Body',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
