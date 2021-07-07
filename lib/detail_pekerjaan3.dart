import 'package:flutter/material.dart';

class BerhasilMelamar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.height * 0.17,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Center(
                  child: Image(
                    image: AssetImage("images/berhasil_lamaran.png"),
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.height * 0.09,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Text(
                  "Cek email kamu",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 24),
                child: Text(
                  "Kami baru saja mengirimkan email untuk mengatur ulang kata sandi kamu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:30),),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        width: 200,
                        height: 45,
                        child: Text(
                          "Buka aplikasi email",
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
                      onTap: () {},
                    ),
            ],
          ),
        ),
      ),
    );
  }
}