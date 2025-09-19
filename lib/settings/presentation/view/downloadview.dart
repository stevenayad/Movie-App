import 'package:flutter/material.dart';
import 'package:movie/settings/presentation/view/widget/downloadbody.dart';

class Downloadview extends StatelessWidget {
  const Downloadview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Downloads',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Downloadbody(),
    );
  }
}
