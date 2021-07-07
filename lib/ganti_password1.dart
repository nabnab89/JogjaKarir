import 'package:flutter/material.dart';
import 'package:jogja_karir/ganti_password2.dart';

class GantiPassword1 extends StatefulWidget {

  @override
  _GantiPassword1State createState() => _GantiPassword1State();
}

class _GantiPassword1State extends State<GantiPassword1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ganti Password'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: ListView(
          children: [
            Text(
              "Masukkan email yang tertaut dengan akun kamu dan kami akan kirimkan email dengan interuksi untuk mengganti password.",
              style: TextStyle(
                fontSize: 19,
              ),
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: EdgeInsets.only(top: 19),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Alamat email kamu",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Dadang@gmail.com"),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top:30),),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        width: double.infinity,
                        child: Text(
                          "Kirim permintaan",
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
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GantiPassword2()));
                      },
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}