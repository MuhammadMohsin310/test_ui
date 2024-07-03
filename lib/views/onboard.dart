import 'package:flutter/material.dart';
import 'package:untitled1/resources/constants/assets.dart';
import 'package:untitled1/resources/constants/colors.dart';
import 'package:untitled1/resources/constants/textStyle.dart';
import 'package:untitled1/views/homeScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAsset.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: 0.0, left: 0.0, right: 30.0, top: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                    },
                    child: const myText(
                      "Skip",
                      color: Colors.black,
                      fontSize: 19,
                      weight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          Image.asset(
            Assets.onboard,
            width: 210,
          ),
          const myText(
            "Let's meeting new \n people around you",
            color: Colors.black,
            fontSize: 30,
            weight: FontWeight.bold,
          ),
          // const SizedBox(height: 60,),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: ColorAsset.boxColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.phone_in_talk,
                        color: ColorAsset.boxColor,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    const myText(
                      "Login with phone",
                      weight: FontWeight.bold,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Color(0xffECF0F6),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        Assets.google,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    const myText(
                      "Login with google",
                      weight: FontWeight.bold,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const myText(
                "Don't have an account?",
                color: Colors.black,
              ),
              myText(
                "Sign Up",
                color: ColorAsset.boxColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
