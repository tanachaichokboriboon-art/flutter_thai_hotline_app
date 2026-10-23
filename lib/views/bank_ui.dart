import 'package:flutter/material.dart';

class BankUI extends StatefulWidget {
  const BankUI({super.key});

  @override
  State<BankUI> createState() => _BankUIState();
}

class _BankUIState extends State<BankUI> {
  static const List<_BankContact> _contacts = [
    _BankContact('ธนาคารกรุงเทพ', '1333', 'assets/images/bank_1.png'),
    _BankContact('ธนาคารออมสิน', '1115', 'assets/images/bank_2.png'),
    _BankContact('ธนาคารกสิกรไทย', '02-888-8888', 'assets/images/bank_3.png'),
    _BankContact('ธนาคารกรุงไทย', '02-111-1111', 'assets/images/bank_4.png'),
    _BankContact('ธนาคารกรุงศรี', '1572', 'assets/images/bank_5.png'),
    _BankContact('ทีเอ็มบีธนชาต', '1428', 'assets/images/bank_6.png'),
    _BankContact('ธนาคารซิตี้แบงค์', '1588', 'assets/images/bank_7.png'),
    _BankContact('ธนาคารแลนด์แอนด์เฮ้าส์', '1327', 'assets/images/bank_8.png'),
    _BankContact('ธนาคารอาคารสงเคราะห์', '02-645-9000', 'assets/images/bank_9.png'),
    _BankContact('ธนาคารไทยพาณิชย์', '02-777-7777', 'assets/images/bank_10.png'),
    _BankContact('ธนาคารเกียรตินาคินภัทร', '02-165-5555', 'assets/images/bank_11.png'),
    _BankContact('ธนาคารไทยเครดิต', '02-697-5454', 'assets/images/bank_12.png'),
    _BankContact('ธนาคารยูโอบี', '02-285-1555', 'assets/images/bank_13.png'),
    _BankContact('ธนาคารทิสโก้', '02-633-6000', 'assets/images/bank_14.png'),
    _BankContact('ธนาคารอิสลาม แห่งประเทศไทย', '02-204-2766', 'assets/images/bank_15.png'),
    _BankContact('ธนาคารซีไอเอ็มบีไทย', '02-626-7777', 'assets/images/bank_16.png'),
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
              'สายด่วนธนาคาร',
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
              'assets/images/bank_0.png',
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

class _BankContact {
  const _BankContact(this.name, this.phone, this.image);

  final String name;
  final String phone;
  final String image;
}
