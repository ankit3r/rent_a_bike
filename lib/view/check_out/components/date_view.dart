import 'package:flutter/material.dart';
import '../../../view_model/const_value.dart';

class DateView extends StatefulWidget {
  final String title;
  final String date;
  const DateView({super.key,required this.title,required this.date});

  @override
  State<DateView> createState() => _DateViewState();
}

class _DateViewState extends State<DateView> {

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText(
              text:   TextSpan(
                style: const TextStyle(
                  fontSize: titleFontSize,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "${widget.title}\n",
                    style: const TextStyle(color: Colors.black54),
                  ),
                  TextSpan(text: widget.date ,style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Icon(Icons.date_range,size: 33,)
          ],
        ),
      ),
    );
  }
}
