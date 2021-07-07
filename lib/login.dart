import 'package:flutter/material.dart';
import 'package:jogja_karir/ganti_password1.dart';
import 'package:jogja_karir/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    _judul(),
                    _textField(context),
                    _button(context),
                  ],
                ),
              )
            ],
          ),
        ) 
      ),
    );
  }

  Widget _judul() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text(
          "Log In",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        Text(
          "Selamat Datang :)",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(
              Icons.alternate_email,
              color: Colors.blue,
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
            hintText: "emailkamu@mail.com",
          ),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.lock_outline,
              color: Colors.blue,
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
            hintText: "password kamu",
            suffixIcon: GestureDetector(
              onTap: () {
                _togglePasswordVisibility();
              },
              child: Icon(
                _isHidePassword ? Icons.visibility_off : Icons.visibility,
                color: _isHidePassword ? Colors.grey : Colors.blue,
              ),
            ),
            isDense: true,
          ),
          style: TextStyle(color: Colors.black),
          obscureText: _isHidePassword,
          autofocus: false,
          initialValue: '',
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }

  Widget _button(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            width: double.infinity,
            child: Text(
              "Masuk",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50),),
            Text(
              "Lupa Password ? ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                "Reset Password",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GantiPassword1()));
              }
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        Text(
          "Atau",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            width: double.infinity,
            child: Text(
              "Masuk Dengan Google",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 190),),
            Text(
              "Belum Memiliki Akun ? ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                "Daftar Sekarang",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Register()));
              }
            ),
          ],
        ),
      ],
    );
  }

}