import 'package:flutter/material.dart';
import './home.dart';
import './bookmark.dart';
import './profil.dart';
import './informasi_profil.dart';

class BerandaTanpaLogin extends StatefulWidget {

  @override
  _BerandaTanpaLoginState createState() => new _BerandaTanpaLoginState();
}

class _BerandaTanpaLoginState extends State<BerandaTanpaLogin> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new Home(), new Bookmark(), new InformasiProfil()];

    @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.bookmark_outline,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.bookmark_outline,
              color: Colors.grey,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person_outline,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            title: new Text(''),
          ),
        ],
      ),
      
    );
  }
}