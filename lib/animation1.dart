import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  Animation1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Animation1State createState() => _Animation1State();
}

class _Animation1State extends State<Animation1>  with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = Tween<double>(begin: 0, end: 200).animate(controller)
      ..addListener(() {
        setState(() {});
      });
     controller.forward();
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: animation.value,
            width: animation.value,
            child: FlutterLogo(),
          ),
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
