import 'package:flutter/material.dart';
import 'lista_citta.dart';
import 'dart:math';

class ScreenCercaBiglietto extends StatefulWidget {
  @override
  State createState() => new ScreenCercaBigliettoState();
}

class ScreenCercaBigliettoState extends State<ScreenCercaBiglietto> {
  int currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        alignment: FractionalOffset.center,
        children: [
          Align(
              alignment: FractionalOffset.topRight,
              child: Container(
                  margin: EdgeInsets.only(top: 24.0),
                  child: ElevatedButton(
                    child: Text("CANCEL"),
                    onPressed: () => Navigator.pop(context),
                  ))),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: FractionalOffset.center,
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Icon(Icons.flight, size: 64.0, color: Colors.black),
                  ),
                  SizedBox.fromSize(
                    size: Size.fromRadius(48.0),
                    child: CircularProgressIndicator(),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 64.0),
                  child: Text("3/64",
                      style: Theme.of(context).textTheme.titleMedium)),
              Container(
                  margin: EdgeInsets.only(top: 32.0),
                  child:
                      Text("Searching for the lowest plane ticket price...")),
            ],
          ),
        ],
      )),
    );
  }
}
