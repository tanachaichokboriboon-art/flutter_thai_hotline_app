// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TravelUI extends StatefulWidget {
  const TravelUI({super.key});

  @override
  State<TravelUI> createState() => _TravelUIState();
}

class _TravelUIState extends State<TravelUI> {
  static const List<_TravelContact> _contacts = [
    _TravelContact('ข้อมูลจราจร', '1197', 'assets/images/travel_4.png'),
    _TravelContact('ตำรวจทางหลวง', '1193', 'assets/images/travel_3.png'),
    _TravelContact('กรมทางหลวงชนบท', '1446', 'assets/images/travel_1.png'),
    _TravelContact('ตำรวจท่องเที่ยว', '1155', 'assets/images/travel_2.png'),
    _TravelContact('ขสมก.', '1348', 'assets/images/travel_5.png'),
    _TravelContact('บขส.', '1490', 'assets/images/travel_6.png'),
    _TravelContact('เส้นทางบนทางด่วน', '1543', 'assets/images/travel_7.png'),
    _TravelContact('กรมทางหลวง', '1586', 'assets/images/travel_8.png'),
    _TravelContact(
        'การรถไฟแห่งประเทศไทย', '1690', 'assets/images/travel_9.png'),
  ];
  //ทำให้โทรได้
  Future<void> _makePhoneCall(String phoneNumber) async {
    final launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'สายด่วนการเดินทาง',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.09,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.03,
            ),
            Image.asset(
              'assets/images/travel_0.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.03,
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: 8,
                ),
                itemCount: _contacts.length,
                separatorBuilder: (context, index) => SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final contact = _contacts[index];
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          contact.image,
                          width: 48,
                          height: 48,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                contact.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text('เบอร์ติดต่อ ${contact.phone}'),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.phone, color: Colors.blue),
                          onPressed: () => _makePhoneCall(contact.phone),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TravelContact {
  const _TravelContact(this.name, this.phone, this.image);

  final String name;
  final String phone;
  final String image;
}
