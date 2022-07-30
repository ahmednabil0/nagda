// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({
    Key? key,
    required this.icn,
    required this.ontap,
    required this.title,
    required this.w,
  }) : super(key: key);

  final double w;
  String title;
  IconData icn;
  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w / 30, vertical: w / 40),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xff040039).withOpacity(.15),
                blurRadius: 99,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(),
              Container(
                height: w / 8,
                width: w / 8,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icn,
                  color: Colors.black.withOpacity(.6),
                ),
              ),
              Text(
                title,
                maxLines: 4,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(.5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeWidget2 extends StatelessWidget {
  HomeWidget2({
    Key? key,
    required this.icn,
    required this.ontap,
    required this.title,
    required this.w,
  }) : super(key: key);

  final double w;
  String title;
  IconData icn;
  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w / 30, vertical: w / 40),
        child: Container(
          padding: EdgeInsets.all(w / 30),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xff040039).withOpacity(.15),
                blurRadius: 99,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(),
              Container(
                height: w / 8,
                width: w / 8,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icn,
                  color: Colors.black.withOpacity(.6),
                ),
              ),
              Text(
                title,
                maxLines: 4,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(.5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
