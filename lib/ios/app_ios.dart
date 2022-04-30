import 'package:aula_04_bloc_pos/ios/home_page.dart';
import 'package:flutter/cupertino.dart';

class IosApp extends StatelessWidget {
  const IosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'IMC - iOS',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
