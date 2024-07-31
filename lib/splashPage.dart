import 'package:flutter/material.dart';

class splashPage extends StatefulWidget {
  const splashPage({super.key});

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/img/bg.jpg'),
              fit: BoxFit.fill,
              opacity: 50),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 300),
                alignment: Alignment.center,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black, blurRadius: 2, spreadRadius: 2)
                  ],
                ),
                child: const Text(
                  'Go',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
