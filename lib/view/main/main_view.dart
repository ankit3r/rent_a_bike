import 'package:flutter/material.dart';
import 'package:rent_a_bike/view_model/main_view_model.dart';

import '../../view_model/const_value.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: pages[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
          iconSize: 30,
          elevation: 8,
          currentIndex: pageIndex,
          onTap: (value) {
           setState(() {
             pageIndex = value;
           });
          },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.map,color: Colors.black),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.wallet,color: Colors.black),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black),label: ""),
      ]),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: Colors.white,
        bottom: _buildAppBarBottom(),
      );
    } else {
      return AppBar(
        title: Text("Title"),
        centerTitle: true,
        bottom: _buildAppBarBottom(),
      );
    }
  }

  PreferredSizeWidget? _buildAppBarBottom() {
    if (pageIndex == 0) {
      return PreferredSize(
        preferredSize: const Size.fromHeight(30.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 16,  bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white, size: 40),
                ),
              ),
              const SizedBox(width: 10,),
              RichText(
                text: const  TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Welcome\n",
                      style:  TextStyle(color: Colors.grey,fontSize: paraFontSize),
                    ),
                    TextSpan(text: "Ankit Kumar",style: TextStyle(
                      fontSize: titleFontSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return null;
    }
  }
}
