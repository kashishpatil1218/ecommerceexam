import 'package:flutter/material.dart';

import 'global.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: Text(
          'Detail page',
          style: TextStyle(color: Colors.grey.shade800, fontSize: 20),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey.shade800,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage(showDetail[detail]['img']),
                        fit: BoxFit.cover)),
              ),
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            showDetail[detail]['name'],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              '${showDetail[detail]['price']},',
                              style: TextStyle(
                                  color: Colors.grey.shade800, fontSize: 15),
                            ),
                          ),
                          Text(
                            showDetail[detail]['dec'],
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1),
                            child: Text(
                              showDetail[detail]['Catogory'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/cart');
          },
          child: Container(
            height: 20,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
                child: Text(
              'Add to cart',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}
