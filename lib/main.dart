import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Profile(),
          SizedBox(
            height: 20,
          ),
          QRIntro(),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(0.0),
            child: Text(
              "Đặt hàng online",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DeliveryMode(
                width: phoneWidth * 0.4,
                image: "assets/images/delivery.png",
                text1: "Delivery",
                text2: "Giao hàng tận nơi đến đại chỉ của bạn",
              ),
              DeliveryMode(
                width: phoneWidth * 0.4,
                image: "assets/images/avatar.png",
                text1: "Delivery",
                text2: "Giao hàng tận nơi đến đại chỉ của bạn",
              )
            ],
          )
        ],
      ),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                  radius: 30,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Sơn",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "0",
                        style: TextStyle(color: Colors.yellow, fontSize: 20),
                      ),
                      Text(
                        "/",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        "5000",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.grey,
                      ),
                      Text("MEMBER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal)),
                      SizedBox(
                        width: 180,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.yellow,
                      ),
                      Text(
                        "VIP",
                        style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.,
                            fontSize: 20),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 100,
                child: Container(
                  // color: Colors.black12,
                  height: 80,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Số dư ví",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black26),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.donut_large,
                              color: Colors.green,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 100,
                child: Container(
                  height: 80,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.clean_hands_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "NẠP ĐIỂM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          color: Colors.grey,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class QRIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      width: 360,
      height: 100,
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                "Bạn đang ngồi ở AHA?",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Quét QR ở góc bàn để sử dụng các tính năng tại quán",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}

class DeliveryMode extends StatelessWidget {
  double width;
  String image;
  String text1;
  String text2;

  DeliveryMode({this.width, this.image, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[100],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      height: width,
      width: width,
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset("$image"),
            ),
            Expanded(
              flex: 1,
              child: Text(
                "$text1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "$text2",
                style: TextStyle(
                  fontFamily: "Arial",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
