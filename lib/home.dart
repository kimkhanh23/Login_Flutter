import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Car(),
    );
  }
}

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  var countShop = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Stack(
            children: [
              Image.asset('assets/1.jpg'),
              Positioned(
                  top: 25,
                  right: 15,
                  child: badges.Badge(
                      badgeContent: Text('$countShop'),
                      position: badges.BadgePosition.bottomStart(),
                      badgeAnimation: const badges.BadgeAnimation.scale(),
                      onTap: () {
                        setState(() {
                          countShop = 0;
                        });
                      },
                      child: const Icon(Icons.shopping_cart))),
              Center(
                child: Container(
                  height: 40,
                  width: 260,
                  margin: const EdgeInsets.only(top: 160),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 3,
                            offset: Offset(2, 3))
                      ] //vi day la List
                      ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Search for car name',
                          suffixIcon: Icon(Icons.search_sharp)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 270,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Cars',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  RatingBar.builder(
                      itemSize: 20,
                      itemBuilder: (context, _) =>
                          const Icon(Icons.star_rounded, color: Colors.yellow),
                      onRatingUpdate: (rating) {})
                ]),
          ),
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100, //nguyen cai thanh dai bn
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/2.jpg',
                              width: 90,
                              height: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'McLaren Angga',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/5.jpg',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      '69 miles',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/3.jpg',
                              width: 90,
                              height: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'BMW Mayuko',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/5.jpg',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      '183 miles',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/4.jpg',
                              width: 90,
                              height: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mazda Satria',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/5.jpg',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      '90 miles',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ))),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              height: 50,
              width: 260,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 15,
                      color: Colors.grey,
                    )
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // cho chu thanh hang
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get your dream car',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        Text(
                          'First car should be easy',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 28,
                    width: 80,
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () => setState(() => countShop += 1),
                      child: const Text(
                        'Get Loan',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 260,
            margin: const EdgeInsets.only(top: 25),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('New coming!!!',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 2,
                            color: Colors.grey,
                            offset: Offset(4, 2))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white)),
                        child: Image.asset('assets/6.jpg'),
                      ),
                      Column(
                        children: [
                          const Text(
                            'Porsche GTR',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(width: 50),
                          Row(
                            children: [
                              Image.asset(
                                'assets/5.jpg',
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(width: 1),
                              const Text(
                                '251 miles',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        "\$390,000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 2,
                            color: Colors.grey,
                            offset: Offset(4, 2))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white)),
                        child: Image.asset('assets/gggg.jpg'),
                        
                      ),
                      Column(
                        children: [
                          const Text(
                            'Porsche GTR',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/5.jpg',
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '251 miles',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        "\$390,000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 2,
                            color: Colors.grey,
                            offset: Offset(4, 2))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white)),
                        child: Image.asset('assets/7.jpg'),
                      ),
                      Column(
                        children: [
                          const Text(
                            'Porsche GTR',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/5.jpg',
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '251 miles',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(width: 40),
                      const Text(
                        "\$390,000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
