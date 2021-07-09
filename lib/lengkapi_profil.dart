import 'package:flutter/material.dart';

class LengkapiProfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    _clipPath(),
                    _isiData(),
                    _textField(context),
                    _button(),
                  ],
                ),
              )
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
                child: Text("Lengkapi Profil Kamu",
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
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(12),
        ),
        Padding(
          padding: const EdgeInsets.only(left:30, right:30),
          child: TextFormField(
            decoration: const InputDecoration(
              icon: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 18,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.blue,
                ),
              ),
              hintText: "Nama Lengkap Kamu",
            ),
            style: TextStyle(color: Colors.black),
            autofocus: false,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right:30),
          child: TextFormField(
            decoration: const InputDecoration(
            icon: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 18,
                child: Icon(
                  Icons.alternate_email_rounded,
                  color: Colors.white,
                ),
              ),
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.blue,
                ),
              ),
              hintText: "Email Kamu",
            ),
            style: TextStyle(color: Colors.black),
            autofocus: false,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right:30),
          child: TextFormField(
            decoration: const InputDecoration(
             icon: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 18,
                child: Icon(
                  Icons.plus_one,
                  color: Colors.white,
                ),
              ),
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.blue,
                ),
              ),
              hintText: "Skill",
            ),
            style: TextStyle(color: Colors.black),
            autofocus: false,
          ),
        ),
      ],
    );
  }

  Widget _button() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 340),
          child: InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 100,
              child: Text(
                "Simpan",
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
        ),
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

