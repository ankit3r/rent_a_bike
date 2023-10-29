import 'package:flutter/material.dart';
import 'package:rent_a_bike/view/Details/details_page.dart';
import 'package:rent_a_bike/view_model/const_value.dart';
import '../../../view_model/bike_view_model.dart';
import 'components/search_view.dart';
import 'components/title_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchView(),
          const SizedBox(height: 8),
          // category card
          SizedBox(
            height: 65,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catregory.length,
              itemBuilder: (context, index) {
                var currentItem = catregory[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentSelectedCategory = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Chip(backgroundColor: currentSelectedCategory== index ?
                      Colors.black : Colors.white,
                        label: Padding(
                          padding: const EdgeInsets.all(6.0),
                            child: Text(currentItem,style: TextStyle(
                              color: currentSelectedCategory== index ?
                              Colors.white : Colors.black,
                            ),),
                    ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          const TitleView(boldTitle: "Popular", title: "items"),
          // bike card
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bikeList.length,
              itemBuilder: (context, index) {
                var currentItem = bikeList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  DetailsPage(model: currentItem))
                    );
                  },
                  child: Container(
                    width: 150,
                    margin: const EdgeInsets.only(top: 16, right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(width: 1.2, color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 10, right: 5, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 115,
                              child: Image(image: AssetImage(currentItem.bikeImg))),
                          Text(
                            currentItem.bikeName,
                            style: const TextStyle(
                                fontSize: paraFontSize,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            currentItem.bikeBrand,
                            style: const TextStyle(
                                fontSize: paraFontSize, color: Colors.black),
                          ),
                          const SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                  fontSize: paraFontSize, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '${currentItem.bikePrice}/',
                                  style:
                                      const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const TextSpan(
                                    text: 'per day',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          const TitleView(boldTitle: "Recently", title: "viewed"),
          const SizedBox(height: 20),
          // recent view  card
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: bikeList.length,
              itemBuilder: (context, index) {
                var currentItem = bikeList[index];
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
                          decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage(currentItem.bikeImg),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              currentItem.bikeName,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontSize: paraFontSize, color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '${currentItem.bikePrice}/',
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
                            color: currentItem.isAvailable == true
                                ? Colors.black
                                : Colors.grey[350],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              currentItem.isAvailable == true
                                  ? "Available"
                                  : "Booked",
                              style: TextStyle(
                                color: currentItem.isAvailable == true
                                    ? Colors.white
                                    : Colors.black,
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

        ],
      ),
    );
  }
}
