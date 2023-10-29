import 'package:flutter/material.dart';

import '../../../model/bike_model.dart';
import '../../../view_model/const_value.dart';

class BikeDetailsView extends StatelessWidget {
  final BikeModel model;

  const BikeDetailsView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: paraFontSize),
                  children: <TextSpan>[
                    TextSpan(
                      text: "${model.bikeBrand}\n",
                    ),
                    TextSpan(
                      text: model.bikeName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              // category
              Chip(label: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: paraFontSize),
                  children: <TextSpan>[
                    const TextSpan(
                        text: "Category\n",
                        style: TextStyle(color: Colors.grey)
                    ),
                    TextSpan(
                      text: model.type[0],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
              const SizedBox(height: 30),
              // description
              Chip(label: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: paraFontSize),
                  children: <TextSpan>[
                    const TextSpan(
                        text: "Displacement\n",
                        style: TextStyle(color: Colors.grey)
                    ),
                    TextSpan(
                      text: model.displacement,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
              const SizedBox(height: 30),
              // max sped
              Chip(label: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: paraFontSize),
                  children: <TextSpan>[
                    const TextSpan(
                        text: "Max. Speed\n",
                        style: TextStyle(color: Colors.grey)
                    ),
                    TextSpan(
                      text: model.speed.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),

            ],
          ),
          Column(
            children: [
              Container(
                height: 250,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.grey,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Image(image: AssetImage(model.bikeImg)),
              ),
              const SizedBox(height: 10),
              // rent
              Chip(
                backgroundColor: Colors.black,
                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                    style: const TextStyle(color: Colors.white, fontSize: paraFontSize),
                    children: <TextSpan>[
                      const TextSpan(
                          text: "Rent\n",
                          style: TextStyle(fontSize: titleFontSize,fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: "${model.bikePrice}/Per day",
                      ),
                    ],
                ),
              ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
