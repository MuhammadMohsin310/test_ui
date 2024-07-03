import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/resources/constants/assets.dart';
import 'package:untitled1/resources/constants/colors.dart';
import 'package:untitled1/resources/constants/textStyle.dart';
import 'package:untitled1/views/homeScreen.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  int myCurrentIndex = 0;

  List pages = const [
    // HomePage(),
    // FavoritePage(),
    // SettingPage(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAsset.mainColor,
      bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 25,
                offset: const Offset(8, 20))
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
                // backgroundColor: Colors.transparent,
                selectedItemColor: ColorAsset.boxColor,
                unselectedItemColor: Colors.black,
                currentIndex: myCurrentIndex,
                onTap: (index) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.directions_outlined),
                      label: "Direction"),
                  BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_2_outlined), label: "profile"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message_outlined), label: "Message"),
                ]),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: const CircleAvatar(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  const myText(
                    "Matches",
                    weight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      child: Icon(
                        Icons.link,
                        color: Colors.black,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          // shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorAsset.boxColor,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    Assets.men1,
                                    fit: BoxFit.cover,
                                    color: Colors.grey.withOpacity(0.4),
                                    colorBlendMode: BlendMode.modulate,
                                  ),
                                  const Center(
                                      child: Icon(
                                    Icons.thumb_up,
                                    color: Colors.white,
                                    size: 35,
                                  ))
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const myText(
                        "Likes",
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          // shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorAsset.boxColor,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    Assets.men1,
                                    fit: BoxFit.cover,
                                    color: Colors.grey.withOpacity(0.4),
                                    colorBlendMode: BlendMode.modulate,
                                  ),
                                  const Center(
                                      child: Icon(
                                    Icons.message,
                                    color: Colors.white,
                                    size: 35,
                                  ))
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const myText(
                        "Comments",
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const myText(
                    "Your Matches",
                    color: Colors.black,
                    fontSize: 30,
                    weight: FontWeight.bold,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  myText(
                    "47",
                    color: ColorAsset.boxColor,
                    fontSize: 30,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              Container(
                height: 250,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ColorAsset.boxColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      Assets.men1,
                                      fit: BoxFit.cover,
                                      width: 200,
                                      height: 250,
                                    )),
                              ),
                              Column(
                                children: [
                                  const SizedBox(height: 5,),
                                  Center(
                                    child: Container(
                                      width: 120,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: ColorAsset.boxColor,
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30)),
                                      ),
                                      child: myText("100% Match"),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 7.0, sigmaY: 7.0),
                                          child: Container(
                                            width: 90.0,
                                            height: 30.0,
                                            child: Center(
                                                child: myText(
                                              "13.km",
                                              fontSize: 20,
                                            )),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12.0)),
                                              // border: Border.all(
                                              //   color: Colors.white,
                                              //   width: 1.0,
                                              // ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      myText(
                                        "John, 20",
                                        fontSize: 26,
                                        weight: FontWeight.bold,
                                      ),
                                      myText("HANOVER"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ColorAsset.boxColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      Assets.men2,
                                      fit: BoxFit.cover,
                                      width: 200,
                                      height: 250,
                                    )),
                              ),
                              Column(
                                
                                children: [
                                                                    const SizedBox(height: 5,),

                                  Center(
                                    child: Container(
                                      width: 120,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: ColorAsset.boxColor,
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30)),
                                      ),
                                      child: myText("100% Match"),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 7.0, sigmaY: 7.0),
                                          child: Container(
                                            width: 90.0,
                                            height: 30.0,
                                            child: Center(
                                                child: myText(
                                              "13.km",
                                              fontSize: 20,
                                            )),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12.0)),
                                              // border: Border.all(
                                              //   color: Colors.white,
                                              //   width: 1.0,
                                              // ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      myText(
                                        "James, 20",
                                        fontSize: 26,
                                        weight: FontWeight.bold,
                                      ),
                                      myText("HANOVER"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ColorAsset.boxColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      Assets.girl1,
                                      fit: BoxFit.cover,
                                      width: 200,
                                      height: 250,
                                    )),
                              ),
                              Column(
                                children: [
                                                                    const SizedBox(height: 5,),

                                  Center(
                                    child: Container(
                                      width: 120,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: ColorAsset.boxColor,
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30)),
                                      ),
                                      child: myText("100% Match"),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 7.0, sigmaY: 7.0),
                                          child: Container(
                                            width: 90.0,
                                            height: 30.0,
                                            child: Center(
                                                child: myText(
                                              "13.km",
                                              fontSize: 20,
                                            )),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12.0)),
                                              // border: Border.all(
                                              //   color: Colors.white,
                                              //   width: 1.0,
                                              // ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const myText(
                                        "Sara 20",
                                        fontSize: 26,
                                        weight: FontWeight.bold,
                                      ),
                                      const myText("HANOVER"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ColorAsset.boxColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      Assets.men3,
                                      fit: BoxFit.cover,
                                      width: 200,
                                      height: 250,
                                    )),
                              ),
                              Column(
                                children: [
                                                                    const SizedBox(height: 5,),

                                  Center(
                                    child: Container(
                                      width: 120,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: ColorAsset.boxColor,
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30)),
                                      ),
                                      child: myText("100% Match"),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 7.0, sigmaY: 7.0),
                                          child: Container(
                                            width: 90.0,
                                            height: 30.0,
                                            child: Center(
                                                child: myText(
                                              "13.km",
                                              fontSize: 20,
                                            )),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12.0)),
                                              // border: Border.all(
                                              //   color: Colors.white,
                                              //   width: 1.0,
                                              // ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      myText(
                                        "Eddie, 20",
                                        fontSize: 26,
                                        weight: FontWeight.bold,
                                      ),
                                      myText("HANOVER"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
