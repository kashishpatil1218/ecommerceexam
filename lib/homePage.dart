// import 'dart:js_interop';

import 'package:ecommerceexam/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          color: Colors.grey.shade800,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey.shade800,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/cart');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: (Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...List.generate(
                    popularList.length,
                    (index) => Popular(
                        name: popularList[index]['name'],
                        Icons: popularList[index]['icon']))
              ],
            ),
            Wrap(
              children: [
                ...List.generate(
                  showDetail.length,
                  (index) => prolist(
                      name: showDetail[index]['name'],
                      image: showDetail[index]['img'],
                      price: showDetail[index]['price'],
                      index: index),
                )
              ],
            )
          ],
        )),
      ),
    );
  }


  Widget prolist(
      {required String image,
        required String name,
        required int index,
        required double price}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(onTap: (){
            detail=index;
            crt.add(showDetail[index]);

            Navigator.of(context).pushNamed('/detail');
          },
            child: Container(
              //margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 210,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(showDetail[index]['img']),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text('${price}',style: TextStyle(fontSize: 15,color: Colors.grey),)
        ],
      ),
    );
  }


  Widget Popular({required String name, required IconData Icons}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons as IconData?,
              color: Colors.grey.shade800,
            ),
          ),

        ],
      ),

    );
  }
}

