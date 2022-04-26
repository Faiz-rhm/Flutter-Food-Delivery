import 'package:flutter/material.dart';
import 'constants.dart';

class NearBy extends StatelessWidget {
  const NearBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          NearByCard(
            image: "assets/images/burger1.png",
            title: "Love Burger",
            time: "25 min",
            rate: "4.9",
            dolor: "no",
            price: "12",
            color: Color.fromRGBO(209, 64, 51, 1),
            buttonColor: Color.fromRGBO(215, 89, 81, 1),
          ),
          NearByCard(
            image: "assets/images/burger2.png",
            title: "Chef  Burger",
            time: "30 min",
            rate: "4.6",
            dolor: "no",
            price: "10",
            color: Color.fromRGBO(238, 174, 60, 1),
            buttonColor: Color.fromRGBO(242, 185, 92, 1),
          ),
          NearByCard(
            image: "assets/images/burger3.png",
            title: "Soup",
            time: "15 min",
            rate: "4.6",
            dolor: "no",
            price: "5",
            color: Color.fromARGB(255, 51, 185, 209),
            buttonColor: Color.fromRGBO(215, 89, 81, 1),
          ),
          NearByCard(
            image: "assets/images/burger4.png",
            title: "Soup",
            time: "15 min",
            rate: "4.6",
            dolor: "no",
            price: "20",
            color: Color.fromARGB(255, 149, 51, 209),
            buttonColor: Color.fromRGBO(215, 89, 81, 1),
          ),
        ],
      ),
    );
  }
}

class NearByCard extends StatelessWidget {
  const NearByCard({
    Key? key,
    required this.image,
    required this.title,
    required this.time,
    required this.rate,
    required this.dolor,
    required this.price,
    required this.color,
    required this.buttonColor,
  }) : super(key: key);

  final String image;
  final String title;
  final String time;
  final String rate;
  final String dolor;
  final String price;
  final Color color;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding / 3,
        top: kDefaultPadding / 1,
        bottom: kDefaultPadding / 1,
      ),
      width: size.width * 0.55,
      child: Container(
          padding: const EdgeInsets.all(kDefaultPadding / 1),
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      const SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Image.asset(
                          image,
                          height: 120,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: const TextStyle(
                      color: Colors.white,
                    )),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 0, right: 5),
                        child: Icon(
                          Icons.access_time_outlined,
                          color: Colors.white38,
                          size: 15,
                        ),
                      ),
                      Text(time, style: const TextStyle(color: Colors.white70,)),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "-",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Text(rate, style: const TextStyle(color: Colors.white70,),),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          "-",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text(dolor, style: const TextStyle(color: Colors.white,),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        child: Icon(
                          Icons.attach_money,
                          color: Colors.white38,
                          size: 22,
                        ),
                      ),
                      Text(price, style:const TextStyle(color: Colors.white, fontSize: 27)),
                    ],
                  ),
                  Stack(alignment: Alignment.center, children: [
                    SizedBox.fromSize(
                      size: const Size.square(35.0),
                      // button width and height
                      child: const ClipOval(
                        child: Material(
                          color: Colors.white24, // button color
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                      size: 20,
                    ),
                  ]),
                ],
              ),
            ],
          ),
        )
    );
  }
}
