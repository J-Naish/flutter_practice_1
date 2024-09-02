import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text(
              'Home',
              style: TextStyle(
                color: Colors.black
              )
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.black
              )
            ),
          ),
        ]
      ),
      body: const Center(
        child: Placeholder(),
      ),
    );
  }
}