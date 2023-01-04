import 'package:flutter/material.dart';
import 'package:luckyhairbar/screens/home/homePage.dart';
import 'package:sizer/sizer.dart';


class navBar extends StatefulWidget {
  navBar({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  late var screens;
  int index = 0;

  int _selectedIndex = -1;

  @override
  void initState() {
    index = widget.index;
    screens = [
      HomePage(),
      Container(),
      Container(),
      Container(),
    ];
    _selectedIndex = index;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(.60),
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: index == 0
                          ? Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Icon(Icons.home),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Icon(Icons.home),
                            ),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: index == 1
                          ? Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Icon(Icons.favorite))
                          : Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Icon(Icons.favorite),
                            ),
                    ),
                    Text(
                      'Favorite',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: index == 2
                          ? Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Icon(Icons.shopping_cart))
                          : Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Icon(Icons.shopping_cart),
                            ),
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: index == 3
                            ? Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Icon(Icons.notifications),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Icon(Icons.notifications),
                              )),
                    Text(
                      'Notificaton',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: index == 4
                            ? Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Icon(Icons.person),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Icon(Icons.person),
                              )),
                    Text(
                      'Account',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
