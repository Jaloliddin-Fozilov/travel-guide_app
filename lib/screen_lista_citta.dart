import 'package:flutter/material.dart';
import 'lista_citta.dart';
import 'screen_citta.dart';

class ListaCittaScreen extends StatelessWidget {
  PageController controller = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      itemBuilder: (_, int i) => CopertinaCitta(ListaCitta.listaCitta[i]),
      itemCount: ListaCitta.listaCitta.length,
      controller: controller,
    ));
  }
}

class CopertinaCitta extends StatelessWidget {
  final Citta citta;
  CopertinaCitta(this.citta);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(citta.img),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.black45, BlendMode.luminosity))),
      child: Stack(
        children: [
          Align(
            alignment: FractionalOffset.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
              child: Text(
                citta.nome.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 90.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(16.0),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(Icons.keyboard_arrow_up, color: Colors.black),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ScreenCitta(citta),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
