import 'package:aula_04_bloc_pos/android/home_page.dart';
import 'package:flutter/material.dart';

class AppAndroid extends StatelessWidget {
  const AppAndroid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'IMC - Android',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}