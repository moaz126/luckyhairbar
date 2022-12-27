import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  List<String> products = [
    'assets/images/product.png',
    'assets/images/product1.png',
    'assets/images/product2.png',
    'assets/images/product3.png',
    'assets/images/product4.png',
  ];
  List<String> productsName = [
    'Curly Kerating Tape Extenstions',
    'Olaplex No 3',
    'WrapKit',
    'Olaplex No. 7 Bonding Oil',
    'KeraCare Styling Wax Stick',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 5.h,
                  child: Image.asset(
                    "assets/images/luckyhair.png",
                    height: 2.h,
                    fit: BoxFit.fill,
                  )),
              Icon(
                Icons.menu,
                color: Colors.black,
              )
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 30.h,
                        child: CarouselSlider.builder(
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int itemIndex,
                                  int pageViewIndex) =>
                              ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: '',
                              placeholder: (context, url) => Image.asset(
                                'assets/images/front.png',
                                fit: BoxFit.cover,
                              ),
                              errorWidget: (context, url,
                                      error) => /* Icon(Icons
                              .person) */
                                  Image.asset(
                                'assets/images/front.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          options: CarouselOptions(
                              autoPlay: false,
                              enlargeCenterPage: true,
                              aspectRatio: 1.5,
                              viewportFraction: 1.1,
                              initialPage: 0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  activeIndex = index;
                                  print(activeIndex);
                                });
                              }),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 45.w,
                        right: 45.w,
                        child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex,
                          count: 1,
                          curve: Curves.bounceInOut,
                          effect: SlideEffect(
                            spacing: 5,
                            radius: 10,
                            dotHeight: 5,
                            dotWidth: 5,
                            activeDotColor: Colors.green,
                            dotColor: Colors.white,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 260,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Center(
                            child: Container(
                              width: 150,
                              height: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      offset: Offset(
                                        3.0,
                                        3.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 4.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      offset: Offset(
                                        -3.0,
                                        -1.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 4.0,
                                    ),
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: Get.width,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5)),
                                          child: Image.asset(
                                            products[index],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 70,
                                          height: 18,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Text(
                                            'New Product!',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                      width: Get.width,
                                      child: Text(
                                        productsName[index],
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '\$102.00',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.orangeAccent),
                                        ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
