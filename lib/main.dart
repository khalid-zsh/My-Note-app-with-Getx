import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_note/routes/route_name.dart';
import 'package:my_note/routes/route_pages.dart';
import 'package:my_note/utils/colors/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: RoutePages.routes,
      initialRoute: RouteName.home,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.backgroundColor
      )
    );
  }
}
