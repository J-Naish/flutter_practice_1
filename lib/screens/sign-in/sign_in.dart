import 'package:flutter/material.dart';
import '../../widgets/layout/screen_template.dart';
import '../../widgets/layout/footer.dart';
import '../../widgets/primitives/custom_button.dart';
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
              SizedBox(height: 64),
              SignInForm(),
              SizedBox(height: 64),
              Text('アカウントをお持ちでない方はこちら', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 32),
              CustomButton(
                label: '新規登録',
                theme: 'onPrimary',
                width: 640,
                onPressed: handleSignUpClick,
              ),
              SizedBox(height: 80),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

void handleSignUpClick() {
  print('Sign up clicked');
}