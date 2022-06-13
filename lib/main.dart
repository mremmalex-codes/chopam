import 'package:flutter/material.dart';
import './constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: mediaQuery.size.height * 0.45,
              width: mediaQuery.size.width * 1,
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
              child: const Center(
                child: Image(
                  image: AssetImage("assets/images/homefood.png"),
                ),
              ),
            ),
            Container(
              height: mediaQuery.size.height * 0.5,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      primary: secondaryColor,
                    ),
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.all(11),
                        width: 300,
                        height: 50,
                        child: const Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
