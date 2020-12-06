import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lupa_password/utils/utils.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            width: width / 1.5,
            height: height / 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: ColorUtils.fontPrimary.withOpacity(0.5),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Find a task",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorUtils.fontPrimary.withOpacity(0.5)),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: height / 9,
            height: height / 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorUtils.primaryColor),
            child: Center(
                child: FaIcon(FontAwesomeIcons.slidersH, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
