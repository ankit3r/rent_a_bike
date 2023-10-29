import 'package:flutter/material.dart';
import 'package:rent_a_bike/view_model/const_value.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Center(
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            controller: searchController,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: titleFontSize),
            decoration: const InputDecoration(
              hintText: 'Search Bike',
              prefixIcon: Icon(Icons.search,size: 29,),
              border: InputBorder.none,
            ),
          ),
        )
      ),
    );
  }
}

