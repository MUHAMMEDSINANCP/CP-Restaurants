import 'package:cp_restaurants/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'common/color_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CP Restaurants',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primaryColor: TColor.primary,
          fontFamily: "Quicksand"),
      home: const OnBoardingView(),
    );
  }
}
