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
  List<String> serviceImages = [
    'https://static.wixstatic.com/media/3983b0_1a9b2721177443c3a7cf11711ac851af~mv2.jpg/v1/fill/w_704,h_465,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3983b0_1a9b2721177443c3a7cf11711ac851af~mv2.jpg',
    'https://static.wixstatic.com/media/3983b0_33782e97247a466cb0cb2be3f06f8846~mv2.jpg/v1/fill/w_704,h_465,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3983b0_33782e97247a466cb0cb2be3f06f8846~mv2.jpg',
    'https://static.wixstatic.com/media/3983b0_daefb57878e848ed94d39aa8bedba321~mv2.jpg/v1/fill/w_704,h_465,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3983b0_daefb57878e848ed94d39aa8bedba321~mv2.jpg',
    'https://static.wixstatic.com/media/3983b0_e23fe8d8b68045bbb95a3ddaf055284a~mv2.jpg/v1/fill/w_704,h_465,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3983b0_e23fe8d8b68045bbb95a3ddaf055284a~mv2.jpg',
    'https://static.wixstatic.com/media/3983b0_8fe6e108e26b43499029214ca2fe9df0~mv2.jpg/v1/fill/w_704,h_465,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3983b0_8fe6e108e26b43499029214ca2fe9df0~mv2.jpg',
    'https://static.wixstatic.com/media/3983b0_a44a5c9709964f0cbaac1e3bfa684705~mv2.jpg/v1/fill/w_704,h_465,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3983b0_a44a5c9709964f0cbaac1e3bfa684705~mv2.jpg',
  ];
  List<String> serviceName = [
    'iTIPS',
    'kTIPS',
    'MicroLinks',
    'Tape Ins',
    'Bonded Install',
    'Bonded Install Anchor Braid',
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _key,
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
            InkWell(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
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
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  width: Get.width,
                  child: Text(
                    'Our Services',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 25.h,
                // width: 15.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: serviceImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: InkWell(
                          onTap: () {
                            /*   Get.to(
                                                () => WorkoutDetail(
                                                    dashbarodUsersList[index]
                                                        .id
                                                        .toString()),
                                                transition: Transition.fade,
                                                duration:
                                                    const Duration(seconds: 1),
                                                curve: Curves.decelerate,
                                              ); */
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: CachedNetworkImage(
                                        height: 55.w,
                                        width: 55.w,
                                        fit: BoxFit.cover,
                                        imageUrl: serviceImages[index],
                                        placeholder: (context, url) =>
                                            Image.asset(
                                          products[0],
                                          fit: BoxFit.cover,
                                          height: 55.w,
                                          width: 55.w,
                                        ),
                                        errorWidget: (context, url,
                                                error) => /* Icon(Icons
                                      .person) */
                                            Image.asset(
                                          products[0],
                                          fit: BoxFit.cover,
                                          height: 55.w,
                                          width: 55.w,
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.4,
                                      child: Container(
                                        height: 55.w,
                                        width: 55.w,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 55.w,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0, bottom: 10),
                                              child: Text(
                                                serviceName[index],
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  width: Get.width,
                  child: Text(
                    'Our Products',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GridView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1.0,
                      childAspectRatio: 0.77,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Center(
                        child: Container(
                          width: 170,
                          // height: 230,
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
                                            color: Colors.white, fontSize: 10),
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
                                        fontSize: 15, color: Colors.blueAccent),
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
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("XYZ"),
              accountEmail: Text("xyz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/store.png',
                height: 30,
              ),
              title: Text("Shop"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/hair.png',
                height: 30,
              ),
              title: Text("Services"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/notes.png',
                height: 30,
              ),
              title: Text("Resources"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ));
  }
}
