import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  final String pageName;
  const BlankPage({super.key,required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(pageName));
  }
}
