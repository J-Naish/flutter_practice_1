import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'screens/sign-in/sign_in.dart';
import 'screens/content/detail/content_detail.dart';
import 'model/contents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/sign-in': (context) => const SignInPage(),
        // '/content-detail': (context) => const ContentDetail(content: popularContents[0]),
      },
    );
  }
}
