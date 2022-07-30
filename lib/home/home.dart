// ignore_for_file: must_be_immutable

import 'package:emergerncy/home/egy_flag.dart';
import 'package:emergerncy/home/home_widget.dart';
import 'package:emergerncy/home/others.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<Map<String, dynamic>> mylist = [
    {
      'name': 'الشرطة',
      'icn': Icons.policy,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('122');
      }
    },
    {
      'name': 'الاسعاف',
      'icn': Icons.medical_services_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('123');
      }
    },
    {
      'name': 'المطافئ',
      'icn': Icons.fire_truck_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('180');
      }
    },
    {
      'name': 'شرطة السياحة',
      'icn': Icons.terrain_rounded,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('126');
      }
    },
    {
      'name': 'شرطة المرور',
      'icn': Icons.traffic_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('128');
      }
    },
    {
      'name': 'طواري الكهرباء',
      'icn': Icons.electrical_services,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('121');
      }
    },
    {
      'name': 'طوارئ الغاز',
      'icn': Icons.fireplace_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('129');
      }
    },
    {
      'name': 'الساعه',
      'icn': Icons.access_time,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('150');
      }
    },
    {
      'name': 'مكالمات دولية',
      'icn': Icons.call,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('144');
      }
    },
    {
      'name': 'فواتير ارضي',
      'icn': Icons.phone_in_talk_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('177');
      }
    },
    {
      'name': 'السكة الحديد',
      'icn': Icons.directions_train_rounded,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('15047');
      }
    },
    {
      'name': 'مكافحة الادمان',
      'icn': Icons.smoke_free_outlined,
      'ontap': () {
        FlutterPhoneDirectCaller.callNumber('16023');
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
        leading: Padding(
          padding: EdgeInsets.all(w / 100),
          child: const EgyFlag(),
        ),
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
                  itemCount: mylist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeWidget(
                        icn: mylist[index]['icn'],
                        ontap: mylist[index]['ontap'],
                        title: mylist[index]['name'],
                        w: w);
                  },
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HomeWidget2(
                      icn: Icons.more_vert_outlined,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtherServices()));
                      },
                      title: 'خدمات اخري',
                      w: w),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
