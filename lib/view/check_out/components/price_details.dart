import 'package:flutter/material.dart';

import '../../../view_model/const_value.dart';

class PriceDetails extends StatelessWidget {
  final String priceDetails;
  final String amount;
  const PriceDetails({super.key, required this.priceDetails, required this.amount});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(priceDetails,style: const TextStyle(fontSize: paraFontSize)),
        Text(amount,style: const TextStyle(fontSize: paraFontSize)),
      ],
    );
  }
}
