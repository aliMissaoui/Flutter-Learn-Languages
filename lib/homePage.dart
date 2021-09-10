import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                        child: Text(
                      'Welcome Learner!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      'Choose a language to learn',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal),
                    )),
                  ],
                ),
              ),
              Expanded(
                child: ListWheelScrollView(
                    itemExtent: 200.0,
                    physics: BouncingScrollPhysics(),
                    children: [
                      buildCard('English', 'ENG'),
                      buildCard('Arabic', 'ARA'),
                      buildCard('Frensh', 'FRE'),
                      buildCard('Chinese', 'CHI'),
                      buildCard('Italian', 'ITA'),
                      buildCard('German', 'GER'),
                      buildCard('Spanish', 'SPA'),
                      buildCard('Russian', 'RUS'),
                      buildCard('Others', 'OTH'),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildCard(String txt, String code) {
    return Container(
      height: 300.0,
      width: 200.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Center(
            child: Opacity(
              opacity: 0.15,
              child: Text(
                code,
                style: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Center(
            child: Text(
              txt,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
