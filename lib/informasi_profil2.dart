// import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jogja_karir/widgets/alert_logout.dart';

class InformasiProfil22 extends StatefulWidget {

  @override
  _InformasiProfil22State createState() => _InformasiProfil22State();
}

class _InformasiProfil22State extends State<InformasiProfil22> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                  children: <Widget>[
                    _clipPath(),
                    _pencariKerja(),
                    _dataDiri(),
                  ],
                ),
            ],
          ),
        ) 
      ),
    );
  }

  Widget _clipPath()  {
    return Column(
      children: <Widget>[
        ClipPath(
          clipper: MyClipper(),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                padding: EdgeInsets.only(top: 20),
                child: Text("Profil Kamu",
                  style: TextStyle(
                    fontSize: 25, 
                    color: Colors.white,
                    fontWeight: FontWeight.bold, 
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
        ),
      ],
    );
  }

  Widget _pencariKerja() {
    return Column(
      children: <Widget>[
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: 100,
            child: Text(
              "Pencari Kerja",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }

  Widget _dataDiri() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top:20),
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "Dadang Ramadhani",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
          ],
        ),
      ]
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();

    path.lineTo(0, size.height-100);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-100);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}

