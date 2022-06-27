import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget emailPasswordWidget() {
  return Column(
    children: <Widget>[
      entryField("E-Posta Adresi"),
      entryField("Şifre", isPassword: true),
    ],
  );
}

Widget entryField(String title, {bool isPassword = false}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true))
      ],
    ),
  );
}

Widget backButton() {
  return InkWell(
    onTap: () {
      //todo geri butonu fonksiyonu
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
            child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
          ),
          Text('Back',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
        ],
      ),
    ),
  );
}

Widget submitButton(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(vertical: 15),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2)
        ],
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff48ecfb), Color(0xff10e4e4)])),
    child: Text(
      'Giriş Yap',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}

Widget createAccountLabel() {
  return InkWell(
    onTap: () {
      //todo kayıt sayfası yapılacaksa buraya yönlendirme kodu bırakılacak
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hesabınız yok mu?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Kayıt Ol',
            style: TextStyle(
                color: Color(0xff10e4dd),
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ),
  );
}

Widget title() {
  return Column(
    children: [
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'G',
            style: GoogleFonts.portLligatSans(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xff10e4dd),
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 7,
                ),
              ],
            ),
            children: [
              TextSpan(
                text: 'ize',
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
              TextSpan(
                text: 'm',
                style: TextStyle(color: Color(0xff10b3e4), fontSize: 35),
              ),
            ]),
      ),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'T',
            style: GoogleFonts.portLligatSans(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff10e4dd),
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 7,
                ),
              ],
            ),
            children: [
              TextSpan(
                text: 'ica',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              TextSpan(
                text: 'ret',
                style: TextStyle(color: Color(0xff10b3e4), fontSize: 25),
              ),
            ]),
      ),
    ],
  );
}
