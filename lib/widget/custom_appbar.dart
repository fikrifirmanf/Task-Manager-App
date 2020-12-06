import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomAppBar extends StatelessWidget {
  AnimationController colorAnimationController;
  Animation colorTween, homeTween, workOutTween, iconTween, drawerTween;
  Function onPressed;

  CustomAppBar({
    @required this.colorAnimationController,
    @required this.onPressed,
    @required this.colorTween,
    @required this.homeTween,
    @required this.iconTween,
    @required this.drawerTween,
    @required this.workOutTween,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: AnimatedBuilder(
        animation: colorAnimationController,
        builder: (context, child) => AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/000/222/934/large_2x/woman-pop-art-vector-illustration.jpg'),
            ),
          ),
          backgroundColor: colorTween.value,
          elevation: 0,
          titleSpacing: 0.0,
          title: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('EEE, dd MMMM yyyy').format(DateTime.now()),
                    style: TextStyle(
                        fontSize: 12, color: homeTween.value, letterSpacing: 1),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Hi, Para Bucin',
                    style: TextStyle(
                        color: workOutTween.value,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 1),
                  ),
                ],
              )
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                color: iconTween.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
