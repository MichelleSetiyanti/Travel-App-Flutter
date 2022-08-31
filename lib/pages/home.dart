import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app_flutter/constants/textstyles.dart';
import 'package:travel_app_flutter/constants/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_flutter/widgets/categoryWidget.dart';
import 'package:travel_app_flutter/widgets/judulWidget.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import '../widgets/categoryItem.dart';
import '../widgets/popularWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: mediaQueryData.viewInsets,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 44.h, left: 25.w, right: 25.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 36.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          color: AppColor.bgColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.r),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/icons/menu.svg",
                            height: 18.h,
                          ),
                          // icon: Icon(Icons.tab),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Current Location",
                              style: AppTextStyle.defaultStyle),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColor.primaryColor,
                                size: 14.r,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "Denpasar, Bali",
                                style: AppTextStyle.loca,
                              )
                            ],
                          )
                        ],
                      ),
                      // Text("Halo3"),
                      Container(
                        width: 36.w,
                        height: 36.h,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profil2.png"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36.w,
                  ),
                  JudulWidget(judul: "Category"),
                  SizedBox(
                    height: 22.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryWidget(
                            gambar: "assets/icons/MOUNTAIN.svg",
                            judul: "Mountain"),
                        SizedBox(
                          width: 12.w,
                        ),
                        CategoryWidget(
                            gambar: "assets/icons/WATERFALL.svg",
                            judul: "Waterfall"),
                        SizedBox(
                          width: 12.w,
                        ),
                        CategoryWidget(
                            gambar: "assets/icons/RIVER.svg", judul: "River"),
                        SizedBox(
                          width: 12.w,
                        ),
                        CategoryWidget(
                            gambar: "assets/icons/FOREST.svg", judul: "Forest"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryItem(
                            gambar: 'assets/images/Rinjani.png',
                            harga: '36',
                            judul: "Rinjani Mountain",
                            tempat: "Lombok, Indonesia"),
                        SizedBox(
                          width: 12.w,
                        ),
                        CategoryItem(
                            gambar: 'assets/images/Bromo.png',
                            harga: '20',
                            judul: "Bromo Mountain",
                            tempat: "East Java, Indonesia"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  JudulWidget(judul: "Popular Destination"),
                  SizedBox(
                    height: 22.h,
                  ),
                  PopularWidget(
                      address: "Komodo Island, Indonesia",
                      desc:
                          "This exceptional beach gets its striking color from microscopic animals called...",
                      price: 53,
                      title: "The Pink Beach",
                      image: "assets/images/Pink.png"),
                  SizedBox(
                    height: 12.h,
                  ),
                  PopularWidget(
                      address: "Bali, Indonesia",
                      desc:
                          "A Meru tower or pelinggih meru is the principal shrine of a Balinese temple. It is a wooden..",
                      price: 48,
                      title: "Meru Tower",
                      image: "assets/images/Meru.png"),
                  SizedBox(
                    height: 12.h,
                  ),
                  PopularWidget(
                      address: "South Sulawesi, Indonesia",
                      desc:
                          "Toraja land is one the tourist destination area in indonesia that must be visited because it..",
                      price: 32,
                      title: "Toraja Land",
                      image: "assets/images/Toraja.png"),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: AppColor.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: SizedBox(
        height: 72.h,
        child: BubbleBottomBar(
          opacity: .2,
          currentIndex: 0,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          elevation: 8,
          fabLocation: BubbleBottomBarFabLocation.end, //new
          hasNotch: true, //new
          hasInk: true, //new, gives a cute ink effect
          inkColor:
              Colors.black12, //optional, uses theme color if not specified
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
                backgroundColor: AppColor.primaryColor,
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.grey[400],
                ),
                activeIcon: Icon(
                  Icons.dashboard,
                  color: AppColor.primaryColor,
                ),
                title: Text("Home")),
            BubbleBottomBarItem(
                backgroundColor: Colors.deepPurple,
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey[400],
                ),
                activeIcon: Icon(
                  Icons.favorite,
                  color: Colors.deepPurple,
                ),
                title: Text("Logs")),
            BubbleBottomBarItem(
                backgroundColor: Colors.indigo,
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey[400],
                ),
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: Colors.indigo,
                ),
                title: Text("Folders")),
            BubbleBottomBarItem(
                backgroundColor: Colors.green,
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[400],
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                title: Text("Menu"))
          ],
        ),
      ),
    );
  }
}
