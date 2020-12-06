import 'package:flutter/material.dart';
import 'package:lupa_password/utils/utils.dart';

class Progressbox extends StatelessWidget {
  const Progressbox({Key key}) : super(key: key);
  final bool clicked = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(16),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width / 3.8,
            height: height / 5,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 7,
                    blurRadius: 14,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                color: ColorUtils.primaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("18",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold)),
                Text("Active",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ))
              ],
            ),
          ),
          Container(
            width: width / 3.8,
            height: height / 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("13",
                    style: TextStyle(
                        color: ColorUtils.fontPrimary,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold)),
                Text("Ongoing",
                    style: TextStyle(
                      color: ColorUtils.fontPrimary,
                      fontSize: 16.0,
                    ))
              ],
            ),
          ),
          Container(
            width: width / 3.8,
            height: height / 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("5",
                    style: TextStyle(
                        color: ColorUtils.fontPrimary,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold)),
                Text("Done",
                    style: TextStyle(
                      color: ColorUtils.fontPrimary,
                      fontSize: 16.0,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
