import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jogja_karir/ganti_password1.dart';
import 'package:jogja_karir/informasi_profil2.dart';
import 'package:jogja_karir/widgets/alert_logout.dart';

class InformasiProfil extends StatefulWidget {

  @override
  _InformasiProfilState createState() => _InformasiProfilState();
}

class _InformasiProfilState extends State<InformasiProfil> {


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
                    _isiData(),
                    _textField(context),
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

  Widget _isiData() {
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

  Widget _textField(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top:20),
              margin: EdgeInsets.only(bottom: 10),
              child: TextButton.icon(
                onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InformasiProfil22()));
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 18,
                  child: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  ),
                ),
                label: Text(
                  "Informasi Profil",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14,
                  ),),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top:20),
              margin: EdgeInsets.only(bottom: 10),
              child: TextButton.icon(
                onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GantiPassword1()));
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 18,
                  child: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                ),
                label: Text(
                  "Ganti Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14,
                  ),),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top:20),
              margin: EdgeInsets.only(bottom: 10),
              child: TextButton.icon(
                onPressed: () {
                  showDialog(context: context, builder: (context) {
                    return AlertLoogout();
                  }
                  );
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 18,
                  child: Icon(
                    Icons.power_settings_new_outlined,
                    color: Colors.white,
                  ),
                ),
                label: Text(
                  "Keluar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14,
                  ),),
              ),
            ),
          ],
        )
      ],
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

