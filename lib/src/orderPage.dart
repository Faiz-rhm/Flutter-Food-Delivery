

import 'package:flutter/material.dart';
import 'package:food_delivery/src/components/titleWithMore.dart';
import 'package:iconly/iconly.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions:[
          Padding(
            padding: const EdgeInsets.only(right: 20) ,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.deepOrange[900],
              child: const Text('5', style: TextStyle(fontSize: 20),),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50,),
          const TitleWithMore(title: "My", size: 25, weight: FontWeight.w700),
          const SizedBox(height: 8),
          const TitleWithMore(title: "Order", size: 24, weight: FontWeight.w400),
          const SizedBox(height: 40,),
          const _OrderItemList(
            quantity: '2' ,
            itemName: 'Cheeseurger',
            price: '\$25',
            image: 'assets/images/burger1.png',
          ),
          const _OrderItemList(
            quantity: '2' ,
            itemName: 'Pepsi',
            price: '\$4',
            image: 'assets/images/pepsi.jpg',
          ),
           const _OrderItemList(
            quantity: '1' ,
            itemName: 'Salad',
            price: '\$6',
            image: 'assets/images/salad.jpg',
          ),
          const SizedBox(height: 20,),
          const _Discount(),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Divider(color: Colors.grey[300], height: 2,)
          ),
          const _Total(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: MaterialButton(
              onPressed: (){},
              color: Colors.deepOrange[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              height: 70,
              child: const Text('Pay', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          )
        ],
      ),
    );
  }
}

class _Total extends StatelessWidget {
  const _Total({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Total', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),),
          const Spacer(),
           Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.attach_money,
                color: Colors.grey,
                size: 22,
              ),
              Text('35', style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27)),
            ],
          ),
        ]
      ),
    );
  }
}

class _Discount extends StatelessWidget {
  const _Discount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          Image.asset('assets/images/barcode.png', width: 100, height: 100,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Discount for drinks'),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text('-10%', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey)
            ),
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class _OrderItemList extends StatelessWidget {
  const _OrderItemList({
    Key? key,
    required this.quantity,
    required this.itemName,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String quantity;
  final String itemName;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: [
          Expanded(
          flex: 2, // 20%
            child: Image.asset(image),
          ),
          Expanded(
            flex: 2, // 60%
            child: Center(child: Text('$quantity x', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemName, style: TextStyle(fontSize: 20,  color: Colors.grey[600]),),
                const SizedBox(height: 5,),
                Text(price, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey)
              ),
              child: IconButton(
                icon: const Icon(IconlyLight.delete),
                onPressed: () {},
              ),
            )
          ),
        ]
      ),
    );
  }
}
