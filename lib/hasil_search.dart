import 'package:belajarflutter/bookmark_login.dart';
import 'package:belajarflutter/kebijakan.dart';
import 'package:flutter/material.dart';
import 'package:belajarflutter/login.dart';

class HasilSearch extends StatefulWidget {
  @override
  _HasilSearch createState() => new _HasilSearch();
}

class _HasilSearch extends State<HasilSearch> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
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
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 550,
                width: double.maxFinite,
                child: ListView(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                        Text(
                          "Ada  ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1),
                        ),
                        Text(
                          "32 Lowongan Design Grafis",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Text(
                          "di",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Text(
                          "Yogyakarta",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.0),
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
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            bniIcon(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            namaPekerjaan(),
                                            Spacer(),
                                            iconSimpan(),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            gajilokasi(),
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
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            rgIcon1(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            namaPekerjaan1(),
                                            Spacer(),
                                            iconSimpan1(),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            gajilokasi1(),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            syarat11(),
                                            syarat21(),
                                            Spacer(),
                                            tanggal1(),
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
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            rgIcon2(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            namaPekerjaan2(),
                                            Spacer(),
                                            iconSimpan2(),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            gajilokasi2(),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            syarat12(),
                                            syarat22(),
                                            Spacer(),
                                            tanggal12(),
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
      ),
    );
  }
}

Widget bniIcon() {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Align(
        alignment: Alignment.centerLeft,
        child: new Image.asset(
          'assets/idm.png',
          width: 50,
          height: 50,
        )),
  );
}

Widget namaPekerjaan() {
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: RichText(
      text: TextSpan(
        text: 'Indomaret Group',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        children: <TextSpan>[
          TextSpan(
              text: "\nGrapic Designer",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    ),
  );
}

Widget iconSimpan() {
  return Padding(
    padding: EdgeInsets.only(right: 15),
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

Widget gajilokasi() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "Rp.1.730.000",
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
      padding: const EdgeInsets.only(left: 15, top: 15),
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
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: <Widget>[
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 100,
              child: Text(
                "FullTime",
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
    padding: const EdgeInsets.only(right: 15),
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text(
        "10 Des'21",
      ),
    ),
  );
}

Widget rgIcon1() {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Align(
        alignment: Alignment.centerLeft,
        child: new Image.asset(
          'assets/hactive.jpg',
          width: 50,
          height: 50,
        )),
  );
}

Widget namaPekerjaan1() {
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: RichText(
      text: TextSpan(
        text: 'Hactiv8',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        children: <TextSpan>[
          TextSpan(
              text: "\nDesign Grafis",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    ),
  );
}

Widget iconSimpan1() {
  return Padding(
    padding: EdgeInsets.only(right: 15),
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

Widget gajilokasi1() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "Rp.1.730.000",
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

Widget syarat11() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 15),
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

Widget syarat21() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: <Widget>[
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 100,
              child: Text(
                "FullTime",
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

Widget tanggal1() {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text(
        "6 Des'21",
      ),
    ),
  );
}

Widget rgIcon2() {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Align(
        alignment: Alignment.centerLeft,
        child: new Image.asset(
          'assets/ralali.png',
          width: 50,
          height: 50,
        )),
  );
}

Widget namaPekerjaan2() {
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: RichText(
      text: TextSpan(
        text: 'Ralali.com',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        children: <TextSpan>[
          TextSpan(
              text: "\nGrapic Desain",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    ),
  );
}

Widget iconSimpan2() {
  return Padding(
    padding: EdgeInsets.only(right: 15),
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

Widget gajilokasi2() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "Rp.1.730.000",
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
      padding: const EdgeInsets.only(left: 15, top: 15),
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
      padding: const EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: <Widget>[
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 100,
              child: Text(
                "FullTime",
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

Widget tanggal12() {
  return Padding(
    padding: const EdgeInsets.only(right: 15),
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text(
        "6 Des'21",
      ),
    ),
  );
}
