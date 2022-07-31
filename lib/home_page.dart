import 'package:flutter/material.dart';
import 'package:user_names/all_names.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myController = TextEditingController();
  List<String> allNames = [];
  ScaffoldMessengerState? scaffold;

  void showAllNames() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AllNames(names: allNames)),
    );
  }

  void addName() {
    if (myController.text.isEmpty) return;

    allNames.add(myController.text);
    debugPrint(myController.text);
    scaffold?.showSnackBar(const SnackBar(content: Text('Name Added')));
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    scaffold = ScaffoldMessenger.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: myController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12),
                child: ElevatedButton(
                  onPressed: addName,
                  child: const Text('ADD'),
                ),
              )
            ],
          ),
        ),
        ElevatedButton(
            onPressed: showAllNames, child: const Text('SHOW ALL NAMES'))
      ],
    );
  }
}
