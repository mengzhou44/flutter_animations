import 'package:flutter/material.dart';
import 'animation1.dart';
import 'animation2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/animation1': (context) => Animation1(title: 'Animation1'),
          '/animation2': (context) => Animation2(title: 'Animation2'),
        });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Page'), elevation: 2.0),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                  child: Text('Animation1'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/animation1');
                  }),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                  child: Text('Animation2'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/animation2');
                  }),
            ],
          ),
        ));
  }
}
