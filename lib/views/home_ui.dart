// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/bank_ui.dart';
import 'package:flutter_thai_hotline_app/views/emg_ui.dart';
import 'package:flutter_thai_hotline_app/views/pub_ui.dart';
import 'package:flutter_thai_hotline_app/views/travel_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int selectedIndex = 0;

  final List<Widget> sudViewShow = const [
    TravelUI(),
    EmgUI(),
    BankUI(),
    PubUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 178, 249),
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepOrange[700],
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/travel_0.png',
              width: 24,
              height: 24,
            ),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/emg_0.png',
              width: 24,
              height: 24,
            ),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/bank_0.png',
              width: 24,
              height: 24,
            ),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/pub_0.png',
              width: 24,
              height: 24,
            ),
            label: 'สาธารนูปโภค',
          ),
        ],
      ),
      //ส่วนของ Body------------------------------------------------
      body: sudViewShow[selectedIndex],
    );
  }
}
