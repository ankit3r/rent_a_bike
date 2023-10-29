import 'package:flutter/material.dart';
import 'package:rent_a_bike/model/bike_model.dart';
import '../../view_model/bike_view_model.dart';
import '../../view_model/const_value.dart';
import '../check_out/check_out.dart';
import '../menu/home/components/title_view.dart';
import 'components/bike_details.dart';
import 'components/top_bar.dart';

class DetailsPage extends StatelessWidget {
  final BikeModel model;

  const DetailsPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(title: "Bike Details"),
              const SizedBox(height: 20),
              BikeDetailsView(model: model),
              const SizedBox(height: 30),
              const TitleView(boldTitle: "Add", title: "Items"),
              const SizedBox(height: 20),
              // recent view  card
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: accessoriesList.length,
                  itemBuilder: (context, index) {
                    var currentItem = accessoriesList[index];
                    return Container(
                      height: 65,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 1.2, color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 10, right: 5, left: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 75,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(
                                image: AssetImage(currentItem.accessoriesImg),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentItem.accessoriesName,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: paraFontSize,
                                      color: Colors.black,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            '${currentItem.accessoriesPrise}/',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: 'per day',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: currentItem.isAdded == true
                                    ? Colors.grey[350]
                                    : Colors.black,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 5),
                                child: Text(
                                  currentItem.isAdded == true
                                      ? "Add"
                                      : currentItem.quantity.toString(),
                                  style: TextStyle(
                                    color: currentItem.isAdded == true
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                    width: 305,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  CheckOutPage(rent: model.bikePrice,item: 800,))
                          );
                        },
                        child: const Text("Check Out",style: TextStyle(color: Colors.white,fontSize: titleFontSize),),)),
              )
            ],
          ),
        ),
      )),
    );
  }
}
