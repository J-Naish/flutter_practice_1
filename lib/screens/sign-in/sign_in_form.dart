import 'package:flutter/material.dart';
import '../../widgets/primitives/custom_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 640,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                'ログイン',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          InputField(label: 'メールアドレス', hintText: 'メールアドレスを入力してください'),
          SizedBox(height: 32),
          InputField(label: 'パスワード', hintText: 'パスワードを入力してください'),
          SizedBox(height: 32),
          CustomButton(
            label: 'ログイン',
            theme: 'primary',
            onPressed: handleSignInClick,
          ),
          SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('パスワードを忘れた方はこちら', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Text('アカウントをお持ちでない方はこちら', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void handleSignInClick() {
  print('Sign in clicked');
}


class InputField extends StatelessWidget {
  const InputField({Key? key, required this.label, required this.hintText}) : super(key: key);

  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
