import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:line_icons/line_icons.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoriesCard(
            icon: LineIcons.hamburger,
            title: "Burgers",
            color: Colors.deepOrange.shade900,
            shadowColor: Colors.deepOrange.shade900,
            iconColor: Colors.white,
            press: () {},
          ),
          CategoriesCard(
            icon: LineIcons.pizzaSlice,
            title: "Pizzas",
            color: Colors.grey.shade200,
            shadowColor: Colors.grey.shade50,
            iconColor: Colors.grey.shade800,
            press: () {},
          ),
          CategoriesCard(
            icon: LineIcons.mugHot,
            title: "Soup",
             color: Colors.grey.shade200,
            shadowColor: Colors.grey.shade50,
            iconColor: Colors.grey.shade800,
            press: () {},
          ),
          CategoriesCard(
            icon: LineIcons.wineBottle,
            title: "Drinks",
             color: Colors.grey.shade200,
            shadowColor: Colors.grey.shade50,
            iconColor: Colors.grey.shade800,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
    required this.color,
    required this.shadowColor,
    required this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Function press;
  final Color color;
  final Color shadowColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding / 1.5,
        top: kDefaultPadding / 1,
        bottom: kDefaultPadding / 0.6,
      ),
      width: size.width * 0.35,
      child: Column(
        children: <Widget>[
          GestureDetector(
            // onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 1.3),
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 5,
                            blurRadius: 30,
                            offset: const Offset(0, 4),
                            color: shadowColor,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Icon(
                              icon,
                              size: 30,
                              color: iconColor,
                            ),
                          ),
                          Text(title,
                              style: TextStyle(
                                color: iconColor,
                              )),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
