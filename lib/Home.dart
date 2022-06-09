import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color.fromARGB(255, 61, 57, 57),
          iconSize: 40,
          backgroundColor: Color.fromARGB(255, 193, 203, 187),
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            )
          ],
        ),
        body: ListView(children: [
          Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(255, 193, 203, 187)),
              child: Image(
                image: AssetImage('lib/imag/ww22/vv.jpg'),
              )),
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 9 / 12),
            children: [
              Card(
                  imageURl:
                      'https://cdn.shopify.com/s/files/1/0519/0362/7424/products/7e8196_249c129cab904e5da23fe96a208e5b71_7Emv2_470x.png?v=1607520742',
                  name: "THE WEEKEND X VLONE BAT COUNTRY TEE",
                  price: "380 SR",
                  decripe: "SEASON SS20 COLOR WHITE"),
              Card(
                  imageURl:
                      "https://cdn.shopify.com/s/files/1/0519/0362/7424/products/o59_470x.png?v=1617222091",
                  name: "Jordan 1 Retro High Travis Scott",
                  price: "500 SR",
                  decripe: " SAIL/BLACK-DARK MOCHA-UNIVERSITY RED"),
              Card(
                  imageURl:
                      "https://cdn.shopify.com/s/files/1/0519/0362/7424/products/7e8196_c83a2e4cc7b04d2e806b109c72b5c44d_7Emv2_360x.png?v=1607520709",
                  name: "THE WEEKEND X VLONE AFTER HOURS BLOOD",
                  price: "850 SR",
                  decripe: "SEASON SS20 COLO RBLACK"),
              Card(
                  imageURl:
                      "https://cdn.shopify.com/s/files/1/0519/0362/7424/products/aq17_360x.png?v=1617989137",
                  name: "Adidas Yeezy Boost 700 Utility Black",
                  price: "2,100 SR",
                  decripe: "STYLE FV5304 COLORWAY UTILITY BLACK"),
            ],
          )
        ]));
  }
}

class Card extends StatelessWidget {
  late String imageURl;
  late String name;
  late String price;
  late String decripe;
  Card(
      {Key? key,
      required this.imageURl,
      required this.name,
      required this.price,
      required this.decripe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(color: Colors.grey, width: 2),
            bottom: BorderSide(color: Colors.grey, width: 2),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageURl),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${name}",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w900),
                ),
                Text("${price}",
                    style: TextStyle(
                        color: Color.fromARGB(255, 35, 158, 174),
                        fontWeight: FontWeight.w900)),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "${decripe}",
                style: TextStyle(color: Colors.grey),
              )),
        ],
      ),
    );
  }
}
