import 'package:flutter/cupertino.dart';

class CupertinoLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Login'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 40),
                Image.asset('assets/logo.png'), // Asegúrate de tener un logo similar en tu proyecto
                SizedBox(height: 20),
                CupertinoTextField(
                  placeholder: 'Username',
                  padding: EdgeInsets.all(16),
                ),
                SizedBox(height: 20),
                CupertinoTextField(
                  placeholder: 'Passphrase',
                  padding: EdgeInsets.all(16),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                CupertinoButton.filled(
                  onPressed: () {},
                  child: Text('Sign In'),
                ),
                SizedBox(height: 10),
                CupertinoButton(
                  onPressed: () {},
                  child: Text('Reset your passphrase?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
