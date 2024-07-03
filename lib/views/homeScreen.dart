import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/resources/constants/assets.dart';
import 'package:untitled1/resources/constants/colors.dart';
import 'package:untitled1/resources/constants/textStyle.dart';
import 'package:untitled1/views/matchScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add), label: "Add"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person_2_outlined), label: "profile"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.message_outlined), label: "Message"),
                  ]),
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const myText(
                      "Friendzy",
                      color: Colors.black,
                      weight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MatchScreen(),
                        ));
                      },
                      child: Container(
                        child: const CircleAvatar(
                          child: Icon(
                            Icons.notifications_none,
                            color: Colors.black,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  // EdgeInsets.symmetric(vertical: 20),
                  height: 110,
                  child: ListView(
                    // physics: AlwaysScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(100)),
                                          child: Image.asset(
                                            Assets.girl3,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 45.0,
                                        bottom: 0.0,
                                        left: 50.0,
                                        right: 0.0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 3.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        height: 30,
                                        width: 30,
                                        child: CircleAvatar(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: ColorAsset.boxColor,
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              myText(
                                "My Story",
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  // shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ColorAsset.boxColor,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Image.asset(
                                        Assets.men1,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const myText(
                                "Eddie",
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  // shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ColorAsset.boxColor,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Image.asset(
                                        Assets.girl1,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const myText(
                                "Fabion",
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  // shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ColorAsset.boxColor,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Image.asset(
                                        Assets.men2,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const myText(
                                "Brandon",
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  // shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ColorAsset.boxColor,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Image.asset(
                                        Assets.girl2,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const myText(
                                "Sara",
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  // shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ColorAsset.boxColor,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Image.asset(
                                        Assets.men3,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const myText(
                                "James",
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xffDFE6F1),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ColorAsset.mainColor,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                              child: myText(
                            "Make Friends",
                            color: Colors.black,
                            weight: FontWeight.bold,
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Center(
                          child: myText(
                        "Search Partners",
                        color: Colors.black,
                        weight: FontWeight.bold,
                      )),
                    ],
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * 0.9,
                  height: 290,
                  child: ListView(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  Assets.img1,
                                  
                                  color: Colors.white.withOpacity(0.8),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 0.0,
                                    top: 20.0,
                                    right: 0.0,
                                    left: 250.0,
                                    ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 7.0, sigmaY: 7.0),
                                    child: Container(
                                      width: 90.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        // border: Border.all(
                                        //   color: Colors.white,
                                        //   width: 1.0,
                                        // ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.thumb_up,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.comment,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.share,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 7.0, sigmaY: 7.0),
                                    child: Container(
                                      width: 140.0,
                                      height: 50.0,
                                      child: Center(
                                          child: myText(
                                        "Travel",
                                        fontSize: 20,
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
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
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  const Row(
                                    children: [
                                      myText(
                                        "If you could live anywhere in \n world where would you pick?",
                                        weight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(100)),
                                              child: Image.asset(
                                                Assets.girl3,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                      const Column(
                                        children: [
                                          myText(
                                            "Miranda Kehlalni",
                                            weight: FontWeight.bold,
                                          ),
                                          myText("STUTTGART"),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  Assets.img1,
                                  color: Colors.white.withOpacity(0.8),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                     bottom: 0.0,
                                    top: 20.0,
                                    right: 0.0,
                                    left: 250.0,
                                    ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 7.0, sigmaY: 7.0),
                                    child: Container(
                                      width: 90.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        // border: Border.all(
                                        //   color: Colors.white,
                                        //   width: 1.0,
                                        // ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.thumb_up,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.comment,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.share,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 7.0, sigmaY: 7.0),
                                    child: Container(
                                      width: 140.0,
                                      height: 50.0,
                                      child: Center(
                                          child: myText(
                                        "Sea",
                                        fontSize: 20,
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
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
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  const Row(
                                    children: [
                                      myText(
                                        "If you could live anywhere in \n world where would you pick?",
                                        weight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(100)),
                                              child: Image.asset(
                                                Assets.girl1,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                      const Column(
                                        children: [
                                          myText(
                                            "Miranda Kehlalni",
                                            weight: FontWeight.bold,
                                          ),
                                          myText("STUTTGART"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  Assets.img1,
                                  color: Colors.white.withOpacity(0.8),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                     bottom: 0.0,
                                    top: 20.0,
                                    right: 0.0,
                                    left: 250.0,
                                    ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 7.0, sigmaY: 7.0),
                                    child: Container(
                                      width: 90.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        // border: Border.all(
                                        //   color: Colors.white,
                                        //   width: 1.0,
                                        // ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.thumb_up,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.comment,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 7.0, sigmaY: 7.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Icon(
                                                  Icons.share,
                                                  color: Colors.white,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12.0)),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 1.0,
                                                  // ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 7.0, sigmaY: 7.0),
                                    child: Container(
                                      width: 140.0,
                                      height: 50.0,
                                      child: Center(
                                          child: myText(
                                        "Sea",
                                        fontSize: 20,
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
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
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  const Row(
                                    children: [
                                      myText(
                                        "If you could live anywhere in \n world where would you pick?",
                                        weight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(100)),
                                              child: Image.asset(
                                                Assets.girl2,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                      const Column(
                                        children: [
                                          myText(
                                            "Miranda Kehlalni",
                                            weight: FontWeight.bold,
                                          ),
                                          myText("STUTTGART"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
