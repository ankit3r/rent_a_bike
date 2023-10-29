import 'package:intl/intl.dart';

import '../view/menu/home/home_view.dart';
import '../view/menu/setting/settings.dart';

const pages = [
  HomePage(),
  BlankPage(pageName: "map",),
  BlankPage(pageName: "wallet",),
  BlankPage(pageName: "settings",),
];

int pageIndex = 0;
DateTime now = DateTime.now();
String rideDate = DateFormat('yyyy-MM-dd').format(now);
String endDate = "tap to select date";

int totalDay = 0;

int discount = 396;

