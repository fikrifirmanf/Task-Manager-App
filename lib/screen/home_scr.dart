import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lupa_password/utils/utils.dart';
import 'package:lupa_password/widget/custom_appbar.dart';
import 'package:lupa_password/widget/progress_box.dart';
import 'package:lupa_password/widget/search_bar.dart';
import 'package:lupa_password/widget/task_card.dart';

class HomeScr extends StatefulWidget {
  const HomeScr({Key key}) : super(key: key);

  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> with TickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  AnimationController _ColorAnimationController;
  final _formKey = GlobalKey<FormBuilderState>();

  // ignore: non_constant_identifier_names
  AnimationController _TextAnimationController;
  Animation _colorTween, _homeTween, _workOutTween, _iconTween, _drawerTween;

  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween =
        ColorTween(begin: Colors.transparent, end: ColorUtils.primaryColor)
            .animate(_ColorAnimationController);
    _iconTween = ColorTween(begin: ColorUtils.titlePrimary, end: Colors.white)
        .animate(_ColorAnimationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _homeTween = ColorTween(begin: ColorUtils.fontPrimary, end: Colors.white70)
        .animate(_ColorAnimationController);
    _workOutTween =
        ColorTween(begin: ColorUtils.titlePrimary, end: Colors.white)
            .animate(_ColorAnimationController);
    _TextAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));

    super.initState();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  bool scrollListener(ScrollNotification scrollInfo) {
    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 80);

      _TextAnimationController.animateTo(scrollInfo.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => showInvoice(context),
            child: FaIcon(FontAwesomeIcons.plus),
            backgroundColor: ColorUtils.secColor),
        key: scaffoldKey,
        drawer: Drawer(),
        body: NotificationListener<ScrollNotification>(
          onNotification: scrollListener,
          child: SafeArea(
            top: false,
            child: Stack(children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    SearchBar(),
                    Progressbox(),
                    TaskCard()
                  ],
                ),
              ),
              CustomAppBar(
                drawerTween: _drawerTween,
                onPressed: () {
                  scaffoldKey.currentState.openDrawer();
                },
                colorAnimationController: _ColorAnimationController,
                colorTween: _colorTween,
                homeTween: _homeTween,
                iconTween: _iconTween,
                workOutTween: _workOutTween,
              )
            ]),
          ),
        ));
  }

  void showInvoice(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              scrollable: true,
              title: Text(
                "Create a task",
                style: TextStyle(color: ColorUtils.titlePrimary),
              ),
              content: FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: <Widget>[
                      FormBuilderTextField(
                        cursorColor: ColorUtils.titlePrimary,
                        name: 'task_title',
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: ColorUtils.titlePrimary),
                          hoverColor: ColorUtils.titlePrimary,
                          focusColor: ColorUtils.titlePrimary,
                          labelText: 'Task title',
                        ),

                        // valueTransformer: (text) => num.tryParse(text),
                      ),
                      FormBuilderDateTimePicker(
                        initialValue: DateTime.now(),
                        format: DateFormat('EE, dd MMM yyyy'),
                        name: 'from',
                        // onChanged: _onChanged,
                        inputType: InputType.date,
                        decoration: InputDecoration(
                          labelText: 'From',
                        ),

                        // initialValue: DateTime.now(),
                        // enabled: true,
                      ),
                      FormBuilderDateTimePicker(
                        initialValue: DateTime.now(),
                        format: DateFormat('EE, dd MMM yyyy'),
                        name: 'to',
                        // onChanged: _onChanged,
                        inputType: InputType.date,
                        decoration: InputDecoration(
                          labelText: 'To',
                        ),

                        // initialValue: DateTime.now(),
                        // enabled: true,
                      ),
                      FormBuilderTextField(
                        cursorColor: ColorUtils.titlePrimary,
                        name: 'note',
                        maxLines: 4,
                        minLines: 1,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: ColorUtils.titlePrimary),
                          hoverColor: ColorUtils.titlePrimary,
                          focusColor: ColorUtils.titlePrimary,
                          labelText: 'Note',
                        ),

                        // valueTransformer: (text) => num.tryParse(text),
                      ),
                    ],
                  )),
              actions: [
                Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: ColorUtils.primaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    child: Text("Create task",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onPressed: () {},
                  ),
                )
              ],
            ));
  }
}
