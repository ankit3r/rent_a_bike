import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rent_a_bike/view_model/const_value.dart';
import 'package:rent_a_bike/view_model/main_view_model.dart';
import '../Details/components/top_bar.dart';
import 'components/date_view.dart';
import 'components/price_details.dart';

class CheckOutPage extends StatefulWidget {
  final int rent;
  final int item;
  const CheckOutPage({super.key,required this.rent,required this.item});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  final TextEditingController _startController = TextEditingController();
  String date = "tab to select date";
  DateTime startDate = DateTime.now();
  Future<void> _startDate(BuildContext context,int index) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
        _startController.text = DateFormat('yyyy-MM-dd').format(startDate);
      });
    }
    setState(() {
      date = DateFormat('yyyy-MM-dd').format(startDate);
      if(index == 0){
       setState(() {
         rideDate = date;
         DateTime startDate = DateFormat('yyyy-MM-dd').parse(rideDate);
         DateTime endDates = DateFormat('yyyy-MM-dd').parse(endDate);
         Duration difference = endDates.difference(startDate);
         totalDay = difference.inDays;
       });
      }else{
        setState(() {
          endDate = date;
          DateTime startDate = DateFormat('yyyy-MM-dd').parse(rideDate);
          DateTime endDates = DateFormat('yyyy-MM-dd').parse(endDate);
          Duration difference = endDates.difference(startDate);
          totalDay = difference.inDays;
        });
      }
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopBar(title: "Check Out"),
                const SizedBox(height: 20),
                Container(

                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child:   Column(
                    children: [
                      GestureDetector(
                        onTap: () => _startDate(context, 0),
                          child: DateView(title: "Start Date",date: rideDate,)),
                       GestureDetector(onTap: () => _startDate(context, 1),child: DateView(title: "End Date",date: endDate,)),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  child: TextField(
                    style: const TextStyle(fontSize: titleFontSize),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: "Apply coupon"
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text("Details",style: TextStyle(fontSize: titleFontSize,fontWeight: FontWeight.bold),),
                const Divider(color: Colors.black54,height: 3,),
                 PriceDetails(priceDetails: "Days",amount: totalDay.toString(),),
                PriceDetails(priceDetails: "Rent",amount: "₹ ${widget.rent*totalDay}",),
                PriceDetails(priceDetails: "Additional item",amount: "₹ ${widget.item*totalDay}",),
                PriceDetails(priceDetails: "Coupon Discount",amount: discount.toString(),),
                const Divider(color: Colors.black54,height: 5,),
                PriceDetails(priceDetails: "Total Amount",amount: "₹ ${((widget.rent + widget.item)*totalDay)-discount}",),
                const SizedBox(height: 50),
                Center(
                  child: SizedBox(
                      width: 350,
                      height: 65,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text("PAY",style: TextStyle(color: Colors.white,fontSize: titleFontSize),),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
