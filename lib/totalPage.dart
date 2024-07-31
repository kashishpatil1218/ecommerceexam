import 'package:flutter/material.dart';

import 'global.dart';
class totalPage extends StatefulWidget {
  const totalPage({super.key});

  @override
  State<totalPage> createState() => _totalPageState();
}

class _totalPageState extends State<totalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: Text(
          'Your Order',
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
          ...List.generate(
            crt.length,
                (index) => addPro(index: index),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
                  'Total : ${bill()}',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ),
    );
  }

  ListTile addPro({required int index}) {
    return ListTile(
      leading: Image.asset(
        crt[index]['img'],
        height: 100,
        width: 100,
      ),
      title: Text(
        crt[index]['name'],
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      subtitle: Text(
        '${crt[index]['price']}',
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.grey.shade800,
        ),
        onPressed: () {
          setState(() {
            crt.removeAt(index);
          });
        },
      ),
    );
  }
}



