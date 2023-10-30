import 'package:cp_restaurants/services/location_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/color_extension.dart';
import 'view/on_boarding/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocationProvider()),
      ],
      child: MaterialApp(
        title: 'CP Restaurants',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
            useMaterial3: true,
            primaryColor: TColor.primary,
            fontFamily: "Quicksand"),
        home: const OnBoardingView(),
        // home: const MainTabView(),
      ),
    );
  }
}
