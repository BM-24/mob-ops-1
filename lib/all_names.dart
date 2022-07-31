import 'package:flutter/material.dart';

class AllNames extends StatelessWidget {
  final List<String> names;
  const AllNames({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALL NAMES'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: names.map((e) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                e,
                style: const TextStyle(fontSize: 24),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
