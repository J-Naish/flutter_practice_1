import 'package:flutter/material.dart';
import '../../widgets/layout/screen_template.dart';
import '../../widgets/layout/footer.dart';
import 'sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTemplate(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SignInForm(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}