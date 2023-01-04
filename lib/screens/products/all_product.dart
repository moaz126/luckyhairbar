import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
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
          'Shop',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
    );
  }
}
