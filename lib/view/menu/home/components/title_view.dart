import 'package:flutter/material.dart';
import '../../../../view_model/const_value.dart';

class TitleView extends StatelessWidget {
  final String boldTitle;
  final String title;
  const TitleView({super.key,required this.boldTitle,required this.title});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        style: const TextStyle(
          fontSize: titleFontSize,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: "$boldTitle ",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: title),
        ],
      ),
    );
  }
}

