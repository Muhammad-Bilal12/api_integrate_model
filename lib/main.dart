import 'package:api_integrate_model/view/homepg.dart';
import 'package:api_integrate_model/view/photoView/photoList.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoApi(),
    );
  }
}
