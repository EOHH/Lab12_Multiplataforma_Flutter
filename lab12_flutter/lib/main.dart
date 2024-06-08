import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'material_login_page.dart';
import 'cupertino_login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MaterialLoginPage()),
                );
              },
              child: Text('Login with Material'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CupertinoLoginPageWrapper()),
                );
              },
              child: Text('Login with Cupertino'),
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoLoginPageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoLoginPage(),
    );
  }
}
