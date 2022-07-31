import 'package:flutter/material.dart';
import 'package:user_names/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Names App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Names App'),
          centerTitle: true,
        ),
        body: const HomePage(),
      ),
    );
  }
}
