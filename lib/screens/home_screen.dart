import 'package:flutter/material.dart';

import '/../constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final List<String> asianFood = const [
    "assets/images/Rectangle6.png",
    "assets/images/Rectangle6.png",
    "assets/images/Rectangle6.png",
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              height: mediaQuery.size.height * 0.39,
              width: mediaQuery.size.width,
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
              child: Center(
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: AssetImage("assets/images/pngegg13.png"),
                    ),
                    // const SizedBox(
                    //   height: 3,
                    // ),
                    Container(
                      width: 200,
                      child: const Text(
                        "Choose Your Food Category",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: mediaQuery.size.width,
              height: mediaQuery.size.height * 0.6,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 39),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Delicious Asian Food",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 190,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(19),
                      itemCount: asianFood.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Image(
                            image: AssetImage(
                              asianFood[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 39),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Popular Food",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 190,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(19),
                      itemCount: asianFood.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Image(
                            image: AssetImage(
                              asianFood[index],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
