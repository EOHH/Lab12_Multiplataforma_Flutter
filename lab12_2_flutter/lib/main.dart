import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material vs Cupertino',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Material vs Cupertino'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Material'),
              Tab(text: 'Cupertino'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MaterialControls(),
            CupertinoControls(),
          ],
        ),
      ),
    );
  }
}

class MaterialControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Material Text Field',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('Material Button'),
          ),
        ],
      ),
    );
  }
}

class CupertinoControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoTextField(
            placeholder: 'Cupertino Text Field',
          ),
          SizedBox(height: 16),
          CupertinoButton(
            color: const Color.fromARGB(255, 229, 255, 0),
            onPressed: () {},
            child: Text('Cupertino Button'),
          ),
        ],
      ),
    );
  }
}
