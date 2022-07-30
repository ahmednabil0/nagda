// ignore_for_file: must_be_immutable

import 'package:emergerncy/home/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class OtherServices extends StatelessWidget {
  OtherServices({Key? key}) : super(key: key);
  List<Map<String, dynamic>> _mylist = [
    {
      'name': 'المترو',
      'icn': Icons.subway_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('16048');
      }
    },
    {
      'name': 'مكافحة الادمان',
      'icn': Icons.smoke_free_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('16023');
      }
    },
    {
      'name': 'الطرق السريعة',
      'icn': Icons.rocket_launch_rounded,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('01221110000');
      }
    },
    {
      'name': 'شرطة النقل',
      'icn': Icons.transform_rounded,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('145');
      }
    },
    {
      'name': 'حماية المستهلك',
      'icn': Icons.store_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('19588');
      }
    },
    {
      'name': 'جرائم الانترنت',
      'icn': Icons.wifi_find_rounded,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('18008');
      }
    },
    {
      'name': 'شكاوي الاتصالات',
      'icn': Icons.call_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('155');
      }
    },
    {
      'name': 'الشكاوي الحكومية',
      'icn': Icons.groups_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('16028');
      }
    },
    {
      'name': 'انقاذ مشردين',
      'icn': Icons.person_search_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('16429');
      }
    },
    {
      'name': 'الطب الوقائى',
      'icn': Icons.medication_liquid_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('105');
      }
    },
    {
      'name': 'وزارة الصحة',
      'icn': Icons.heart_broken_rounded,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('137');
      }
    },
    {
      'name': 'المياة',
      'icn': Icons.water_drop_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('125');
      }
    },
    {
      'name': 'الصرف الصحي',
      'icn': Icons.water_rounded,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('175');
      }
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nagda',
          style: TextStyle(fontSize: w / 17, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 0,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: _mylist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeWidget(
                        icn: _mylist[index]['icn'],
                        ontap: _mylist[index]['ontap'],
                        title: _mylist[index]['name'],
                        w: w);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
