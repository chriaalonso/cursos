import 'package:flutter/material.dart';
import 'package:layout/themes/my_theme.dart';
import 'screens/home.dart';

void main() => runApp(const Alubank());

class Alubank extends StatelessWidget {
  const Alubank({super.key});

  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alubank',
      theme: MyTheme,
      home: const Home(),
    );
  }
}
