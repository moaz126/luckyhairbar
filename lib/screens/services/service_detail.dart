import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ServiceDetail extends StatefulWidget {
  const ServiceDetail({super.key, required this.serviceName});
  final String serviceName;
  @override
  State<ServiceDetail> createState() => _ServiceDetailState();
}

class _ServiceDetailState extends State<ServiceDetail> {
  int activeIndex = 0;
  String dropdownvalue = '22';
  List<String> images = [
    'https://static.wixstatic.com/media/3983b0_34ecdc840efc4540a4799ac0af59cb74~mv2.jpg/v1/fill/w_474,h_632,al_c,q_85,usm_0.66_1.00_0.01/3983b0_34ecdc840efc4540a4799ac0af59cb74~mv2.jpg',
    'https://static.wixstatic.com/media/3983b0_5581d94ff60447489c0fef9a0f858e4d~mv2.jpg/v1/fill/w_474,h_632,al_c,q_85,usm_0.66_1.00_0.01/3983b0_5581d94ff60447489c0fef9a0f858e4d~mv2.jpg',
    'https://static.wixstatic.com/media/3983b0_862b91414a2240b1988f682ed614ea49~mv2.png/v1/fill/w_356,h_632,al_c,usm_0.66_1.00_0.01/3983b0_862b91414a2240b1988f682ed614ea49~mv2.png'
  ];
  // List of items in our dropdown menu
  var items = [
    '22',
    '24',
    '20',
    '18',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          widget.serviceName,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
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
                                imageUrl:
                                    'https://static.wixstatic.com/media/3983b0_1a9b2721177443c3a7cf11711ac851af~mv2.jpg/v1/fill/w_704,h_465,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3983b0_1a9b2721177443c3a7cf11711ac851af~mv2.jpg',
                                placeholder: (context, url) => Image.asset(
                                  'assets/images/luckyhair.png',
                                  fit: BoxFit.cover,
                                ),
                                errorWidget: (context, url,
                                        error) => /* Icon(Icons
                                    .person) */
                                    Image.asset(
                                  'assets/images/luckyhair.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            options: CarouselOptions(
                                autoPlay: false,
                                enableInfiniteScroll: false,
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
                  /*  SizedBox(
                    width: Get.width,
                    child: Text(
                      'Curly Keratin Tape Extensions',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ), */
                  SizedBox(
                    width: Get.width,
                    child: Text(
                      '\$ 102.00',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /*  SizedBox(
                    width: Get.width,
                    child: Text(
                      'or 4 interest-free payments with sezzle',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownvalue,
                              hint: Text('Size'),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30.w,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      hintText: 'Quantity')),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ), */
                  SizedBox(
                    width: Get.width,
                    child: Text(
                      'Description',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Text(
                      'INSTANT GOAL LENGTH!\n\nWhat’s Included?\n1. Luxury Extension Evaluation with Silk Out or Regular Maintenance\n2. Full Service Braidless MicroLink Installation\n     Olaplex Complete Shampoo Included\n     Up to 125g of Raw Brazilian Extensions\n     Silk Out Included\n3. 6-8 Week Installation Repositioning \n4. Installation Removal with Silk Out\n\nHow Long Do MicroLinks Last?\nProperly Maintained MicroLink extensions may have a lifespan of up to 18 weeks.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 79.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff66B147),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Purchase Package',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          /* Container(
            height: 50,
            width: 50.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Color(0xff318A99)),
            child: Text(
              'Add to Cart',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ), */
        ],
      ),
    );
  }
}
