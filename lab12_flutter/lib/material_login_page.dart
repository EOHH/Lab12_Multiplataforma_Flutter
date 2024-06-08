import 'package:flutter/material.dart';

class MaterialLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Serif',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text('Login'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot password?'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign up here',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
