import 'package:flutter/material.dart';

import '../../common/color_extension.dart';
import '../../common_widget/near_by_list_row.dart';
import '../../common_widget/popup_layout.dart';
import '../discovery/filter_view.dart';

class LegendryListView extends StatefulWidget {
  const LegendryListView({super.key});

  @override
  State<LegendryListView> createState() => _LegendryListViewState();
}

class _LegendryListViewState extends State<LegendryListView> {
  List legendaryArr = [
    {
      "name": "Lombar Pizza",
      "address": "East 46th Street",
      "category": "Pizza, Italian",
      "image": "assets/img/l1.png",
      "time": "11:30AM to 11:00PM",
      "rate": 3.8
    },
    {
      "name": "Sushi Bar",
      "address": "210 Salt Pond Rd.",
      "category": "Sushi, Japan",
      "image": "assets/img/l2.png",
      "time": "11:30AM to 11:00PM",
      "rate": 4.1
    },
    {
      "name": "Steak House",
      "address": "East 46th Street",
      "category": "Steak, American",
      "image": "assets/img/l3.png",
      "time": "11:30AM to 11:00PM",
      "rate": 1.9
    },
    {
      "name": "Lombar Pizza",
      "address": "East 46th Street",
      "category": "Pizza, Italian",
      "image": "assets/img/l1.png",
      "time": "11:30AM to 11:00PM",
      "rate": 2.1
    },
    {
      "name": "Steak House",
      "address": "East 46th Street",
      "category": "Steak, American",
      "image": "assets/img/l3.png",
      "time": "11:30AM to 11:00PM",
      "rate": 2.8
    },
    {
      "name": "Sushi Bar",
      "address": "210 Salt Pond Rd.",
      "category": "Sushi, Japan",
      "image": "assets/img/l2.png",
      "time": "11:30AM to 11:00PM",
      "rate": 3.8
    },
    {
      "name": "Steak House",
      "address": "East 46th Street",
      "category": "Steak, American",
      "image": "assets/img/l3.png",
      "time": "11:30AM to 11:00PM",
      "rate": 1.8
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      color: TColor.bg,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: TColor.bg,
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: TColor.bg,
                  elevation: 0,
                  expandedHeight: media.width * 0.6,
                  floating: false,
                  centerTitle: false,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.zero,
                    title: Container(
                      width: media.width,
                      height: media.width * 0.6,
                      color: TColor.secondary,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image.asset(
                            "assets/img/f4.png",
                            width: media.width,
                            height: media.width * 0.75,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: media.width,
                            height: media.width * 0.75,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                  Colors.black87,
                                  Colors.black87,
                                  Colors.transparent,
                                  Colors.black54,
                                  Colors.black87,
                                ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: media.width * 0.05, horizontal: 20),
                            child: const Text(
                              "Legendary Foods",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  leading: IconButton(
                    icon: Image.asset(
                      "assets/img/back.png",
                      width: 27,
                      height: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Share",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
              ];
            },
            body: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ListView.builder(
                      itemCount: legendaryArr.length,
                      itemBuilder: (context, index) {
                        var fObj = legendaryArr[index] as Map? ?? {};
                        return NearByListRow(
                          fObj: fObj,
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "${legendaryArr.length} Place",
                        style: TextStyle(
                            color: TColor.text,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context, PopupLayout(child: const FilterView()));
                        },
                        child: Text(
                          "Filter",
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
