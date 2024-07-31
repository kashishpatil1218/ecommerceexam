import 'package:flutter/material.dart';
List popularList=[
  {
    'name':'Popular',
    'icon':Icons.star,
  },
  {
    'name':'chair',
    'icon':Icons.chair_alt,
  },
  {
    'name':'Table',
    'icon':Icons.table_bar,
  },
  {
    'name':'Bed',
    'icon':Icons.bed,
  },
  {
    'name':'Armchair',
    'icon':Icons.chair,
  },

];
List crt=[];
double bill(){
  double Bill=0;
  for(int i=0; i<crt.length; i++)
    {
      Bill=Bill+crt[i]['price'];
    }
  Bill+= (Bill*18)/100;
  return Bill;
}
List showDetail=[
  {
    'name':"Hall Chair",
    'img':'assets/img/White chair.png',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':300.00,
    'Catogory':'Furniture',
  },
  {
    'name':"Model Hall Chair",
    'img':'assets/img/grey.png',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':350.00,
    'Catogory':'Modern Furniture',
  },
  {
    'name':"Table ",
    'img':'assets/img/table.jpg',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':450.00,
    'Catogory':'Table Furniture',
  },
  {
    'name':"white Lemp",
    'img':'assets/img/lemp.png',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':1500.00,
    'Catogory':'Lemp',
  },
  {
    'name':"Dressing Table",
    'img':'assets/img/dressing table.png',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':1550.00,
    'Catogory':'Dresing Table',
  },
  {
    'name':"Grey Bed",
    'img':'assets/img/bed.jpg',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':1600.00,
    'Catogory':'Furniture Bed',
  },
  {
    'name':"Rou d chair",
    'img':'assets/img/round chari.jpeg',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':1650.00,
    'Catogory':'Furniture chair',
  },
  {
    'name':"Chair",
    'img':'assets/img/unoq.jpeg',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':1700.00,
    'Catogory':'Furniture chair ',
  },
  {
    'name':"Cup/board",
    'img':'assets/img/cupboard.jpeg',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':300.00,
    'Catogory':'Furniture CupBoadr',
  },
  {
    'name':"Modern Lemp",
    'img':'assets/img/Lemp2.png',
    'dec':'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'price':300.00,
    'Catogory':'Furniture lemp',
  },
];
int detail=0;