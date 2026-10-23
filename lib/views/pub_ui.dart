import 'package:flutter/material.dart';

class PubUI extends StatefulWidget {
  const PubUI({super.key});

  @override
  State<PubUI> createState() => _PubUIState();
}

class _PubUIState extends State<PubUI> {
  static const List<_PubContact> _contacts = [
    _PubContact('ไฟฟ้านครหลวง', '1130', 'assets/images/pub_1.png'),
    _PubContact('ไฟฟ้าส่วนภูมิภาค', '1129', 'assets/images/pub_2.png'),
    _PubContact('ไฟฟ้าฝ่ายผลิต', '1416', 'assets/images/pub_3.png'),
    _PubContact('การประปานครหลวง', '1125', 'assets/images/pub_4.png'),
    _PubContact('การประปาส่วนภูมิภาค', '1662', 'assets/images/pub_5.png'),
    _PubContact('true', '1242', 'assets/images/pub_6.png'),
    _PubContact('dtac', '1678', 'assets/images/pub_7.png'),
    _PubContact('AIS', '1175', 'assets/images/pub_8.png'),
    _PubContact('TOT', '1100', 'assets/images/pub_9.png'),
  ];

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
              'สายด่วนสาธารณูปโภค',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.07,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.03,
            ),
            Image.asset(
              'assets/images/pub_0.png',
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
                        Icon(Icons.phone, color: Colors.blue),
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

class _PubContact {
  const _PubContact(this.name, this.phone, this.image);

  final String name;
  final String phone;
  final String image;
}
