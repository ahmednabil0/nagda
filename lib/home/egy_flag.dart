import 'package:flutter/material.dart';

class EgyFlag extends StatelessWidget {
  const EgyFlag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(3),
                      topLeft: Radius.circular(3))),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(3),
                      bottomLeft: Radius.circular(3))),
            ),
          )
        ],
      ),
    );
  }
}
