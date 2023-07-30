import 'package:flutter/material.dart';
import 'package:secure_storage_demo/views/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Secure Storage Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Flutter Secure Storage Demo'),
    );
  }
}
