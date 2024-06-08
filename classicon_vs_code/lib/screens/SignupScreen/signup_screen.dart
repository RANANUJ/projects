
import 'package:flutter/material.dart';
import 'components/signup_screen_body.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignupScreen'),
      ),
      body: SignupScreenBody(),
    );
  }
}
    