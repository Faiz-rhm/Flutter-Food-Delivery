import 'package:flutter/material.dart';
import 'package:food_delivery/src/components/nearBy.dart';
import 'package:food_delivery/src/orderPage.dart';
import 'package:iconly/iconly.dart';
import 'components/categories.dart';
import 'components/titleWithMore.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _drawerButton() {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 10),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderPage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(left: 0, top: 20, bottom: 10),
              child: const Icon(
                IconlyLight.filter_2,
                size: 35,
                color: Color.fromRGBO(110, 110, 110, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileButton() {
    return Container(
      padding: const EdgeInsets.only(top:40, right: 0, bottom: 0, left: 20),
      decoration: BoxDecoration(
        color: Colors.deepOrange[900],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0)
        ),
      ),
      child:Image.asset('assets/images/profile.png', width: 100,),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(height: height * .19),
                      const TitleWithMore(
                          title: "Deliver to",
                          size: 25,
                          weight: FontWeight.w700),
                      const SizedBox(height: 5),
                      const TitleWithMore(
                          title: "Home", size: 24, weight: FontWeight.w400),
                      const SizedBox(height: 45),
                      const TitleWithMore(
                          title: "Categories",
                          size: 18,
                          weight: FontWeight.w500),
                      const CategoriesList(),
                      const SizedBox(height: 15),
                      const TitleWithMore(
                          title: "Near you", size: 18, weight: FontWeight.w500),
                      const NearBy(),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _drawerButton(),
                _profileButton(),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.home,
              color: Color.fromRGBO(98, 98, 98, 1),
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.profile,
              color: Color.fromRGBO(98, 98, 98, 1),
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.search,
              color: Color.fromRGBO(98, 98, 98, 1),
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.setting,
              color: Color.fromRGBO(98, 98, 98, 1),
              size: 25,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
