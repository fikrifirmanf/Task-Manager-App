import 'package:flutter/material.dart';
import 'package:lupa_password/screen/home_scr.dart';
import 'package:lupa_password/utils/utils.dart';

class OnBoardScr extends StatelessWidget {
  const OnBoardScr({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              color: ColorUtils.primaryColor,
            ),
            Positioned(
              top: -100,
              left: -120,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Color(0xff6000FF),
                ),
              ),
            ),
            Positioned.fill(
                top: 50,
                right: 10,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      color: Color(0xff6000FF),
                    ),
                  ),
                )),
            Positioned.fill(
                left: -50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff6000FF),
                    ),
                  ),
                )),
            Positioned.fill(
                top: 40,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width,
                        height: height / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/bg.png"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 32, left: 32, top: 16),
                        child: Text(
                          "Hi, Freelancer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32, left: 32),
                        child: Text(
                          "Finish your work",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomeScr())),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(
                              left: 32, right: 32, top: 32, bottom: 8),
                          width: width,
                          decoration: BoxDecoration(
                              color: ColorUtils.secColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              "Get Started Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Do you have an account? Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
