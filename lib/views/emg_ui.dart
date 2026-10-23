import 'package:flutter/material.dart';

class EmgUI extends StatefulWidget {
  const EmgUI({super.key});

  @override
  State<EmgUI> createState() => _EmgUIState();
}

class _EmgUIState extends State<EmgUI> {
  static const List<_EmgContact> _contacts = [
    _EmgContact('เหตุด่วนเหตุร้าย', '191', 'assets/images/emg_1.png'),
    _EmgContact('แจ้งไฟไหม้สัตว์เข้าบ้าน', '199', 'assets/images/emg_2.png'),
    _EmgContact('สายด่วนรถหาย(ตำรวจแห่งชาติ)', '1192', 'assets/images/emg_3.png'),
    _EmgContact('อุบัติเหตุทางน้ำ', '1196', 'assets/images/emg_4.png'),
    _EmgContact('แจ้งคนหาย', '1300', 'assets/images/emg_5.png'),
    _EmgContact('ศูนย์ปลอดภัยคมนาคม', '1356', 'assets/images/emg_6.png'),
    _EmgContact('หน่วยแพทย์กู้ชีพ', '1554', 'assets/images/emg_7.png'),
    _EmgContact('ศูนย์เอราวัณ', '1646', 'assets/images/emg_8.png'),
    _EmgContact('เจ็บป่วยฉุกเฉิน', '1669', 'assets/images/emg_9.png'),
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
              'สายด่วนอุบัติเหตุ-เหตุฉุกเฉิน',
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
              'assets/images/emg_0.png',
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
                separatorBuilder: (context, index) =>
                    SizedBox(height: 12),
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

class _EmgContact {
  const _EmgContact(this.name, this.phone, this.image);

  final String name;
  final String phone;
  final String image;
}
