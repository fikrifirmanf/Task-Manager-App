import 'package:flutter/material.dart';
import 'package:lupa_password/utils/utils.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16, left: 16, top: 16),
          child: Text(
            "Today task",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: ColorUtils.titlePrimary),
          ),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Container(
                    margin: (i == 0)
                        ? EdgeInsets.only(
                            left: 16, top: 16, right: 16, bottom: 8)
                        : (i == 9)
                            ? EdgeInsets.only(
                                left: 16, top: 8, right: 16, bottom: 16)
                            : EdgeInsets.only(
                                left: 16, top: 8, right: 16, bottom: 8),
                    width: width,
                    height: height / 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: width / 50,
                          height: height / 9,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: 28,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wireframing web design",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: ColorUtils.titlePrimary),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("9 am to 11 am",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style:
                                      TextStyle(color: ColorUtils.fontPrimary))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }
}
