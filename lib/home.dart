import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_karir/detail_pekerjaan.dart';
import 'package:jogja_karir/detail_pekerjaan2.dart';
import 'package:jogja_karir/login.dart';
import 'package:jogja_karir/kebijakan.dart';
import 'package:jogja_karir/search.dart';

class Home extends StatefulWidget {

  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Search()));
            },
          ),
        ],
      ),
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 90,
                child: DrawerHeader(
                  child: Text(
                    'Menu',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              ListTile(
                title: Text('Login disini'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
              ListTile(
                title: Text('Kebijakan'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kebijakan()));
                },
              ),
              ListTile(
                title: Text('Pengaturan'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Update Aplikasi'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: new Scaffold(
          body: new Container(
            child: Container(
              padding: EdgeInsets.fromLTRB(10,10,10,0),
              height: 700,
              width: double.maxFinite,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                  ),
                  Text(
                    "Lowongan Terbaru",
                    style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                  ),
                  Card(
                  child: InkWell(
                    onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KirimLamaran()));
                    },
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        icon(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        namaPekerjaan(),
                                        Spacer(),
                                        iconsimpan(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        gajidanlokasi(),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        syarat1(),
                                        syarat2(),
                                        Spacer(),
                                        tanggal(),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ),
                  ),
                  Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        icon2(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        namaPekerjaan2(),
                                        Spacer(),
                                        iconsimpan2(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        gajidanlokasi2(),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        syarat12(),
                                        syarat22(),
                                        Spacer(),
                                        tanggal2(),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ),
                  Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        icon3(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        namaPekerjaan3(),
                                        Spacer(),
                                        iconsimpan3(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        gajidanlokasi3(),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        syarat13(),
                                        syarat23(),
                                        Spacer(),
                                        tanggal3(),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ),
                  Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        icon(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        namaPekerjaan(),
                                        Spacer(),
                                        iconsimpan(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        gajidanlokasi(),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        syarat1(),
                                        syarat2(),
                                        Spacer(),
                                        tanggal(),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ),
                ],
                
              ),
            ),
          ),
          ),
        ),
      );
  }
  Widget iconsimpan() {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        icon : Icon(Icons.bookmark_outline),
        color: Colors.grey,
        iconSize: 30,
        onPressed : () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Kamu ngga bisa nyimpan!",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            duration: Duration(seconds: 3),
            shape: StadiumBorder(),
            width: 250,
            behavior: SnackBarBehavior.floating,
          ),
          );
        }
      ),
    ),
  );
  }
}

Widget icon() {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Align(
      alignment: Alignment.centerLeft,
      child: new Image.asset('images/bni.png',
        width: 50,
        height: 50,),
    )
  );
}

Widget namaPekerjaan() {
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: RichText(
      text: TextSpan(
        text: "Bank BNI",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        children: <TextSpan>[
          TextSpan(
            text: "\nCustomer Service",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            )
          ),
        ],
      ),
    ),
  );
}



Widget gajidanlokasi() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "Rp. 1.730.000",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "\nYogyakarta, Indonesia",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget syarat1() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15, bottom: 15),
      child: Row(
        children: <Widget>[
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: 50,
            child: Text(
              "SMA",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
      ),
    ),
  );
}

Widget syarat2() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15, bottom: 15),
      child: Row(
        children: <Widget>[
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: 100,
            child: Text(
              "Full Time",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
      ),
    ),
  );
}

Widget tanggal() {
  return Padding(
    padding: const EdgeInsets.only(right: 15, bottom: 15),
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text("10 Des '21",
      ),
    ),
  );
}

Widget icon2() {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Align(
      alignment: Alignment.centerLeft,
      child: new Image.asset('images/ruangguru.png',
        width: 50,
        height: 50,),
    )
  );
}

Widget namaPekerjaan2() {
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: RichText(
      text: TextSpan(
        text: "Ruang Guru",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        children: <TextSpan>[
          TextSpan(
            text: "\nCustomer Service",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            )
          ),
        ],
      ),
    ),
  );
}

Widget iconsimpan2() {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Align(
      alignment: Alignment.centerRight,
      child: Icon(
        Icons.bookmark_outline,
        color: Colors.grey,
        size: 30,
      ),
    ),
  );
}

Widget gajidanlokasi2() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "Rp. 1.730.000",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "\nYogyakarta, Indonesia",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget syarat12() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15, bottom: 15),
      child: Row(
        children: <Widget>[
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: 50,
            child: Text(
              "SMA",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
      ),
    ),
  );
}

Widget syarat22() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15, bottom: 15),
      child: Row(
        children: <Widget>[
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: 100,
            child: Text(
              "Full Time",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
      ),
    ),
  );
}

Widget tanggal2() {
  return Padding(
    padding: const EdgeInsets.only(right: 15, bottom: 15),
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text("6 Des '21",
      ),
    ),
  );
}

Widget icon3() {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Align(
      alignment: Alignment.centerLeft,
      child: new Image.asset('images/ruangguru.png',
        width: 50,
        height: 50,),
    )
  );
}

Widget namaPekerjaan3() {
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: RichText(
      text: TextSpan(
        text: "Ruang Guru",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        children: <TextSpan>[
          TextSpan(
            text: "\nMarketing Online",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            )
          ),
        ],
      ),
    ),
  );
}

Widget iconsimpan3() {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Align(
      alignment: Alignment.centerRight,
      child: Icon(
        Icons.bookmark_outline,
        color: Colors.grey,
        size: 30,
      ),
    ),
  );
}

Widget gajidanlokasi3() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "Rp. 1.730.000",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "\nYogyakarta, Indonesia",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget syarat13() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15, bottom: 15),
      child: Row(
        children: <Widget>[
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: 50,
            child: Text(
              "SMA",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
      ),
    ),
  );
}

Widget syarat23() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top:15, bottom: 15),
      child: Row(
        children: <Widget>[
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: 100,
            child: Text(
              "Full Time",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
      ),
    ),
  );
}

Widget tanggal3() {
  return Padding(
    padding: const EdgeInsets.only(right: 15, bottom: 15),
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text("6 Des '21",
      ),
    ),
  );
}