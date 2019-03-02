import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sun Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sun Container'),
        ),
        body: Container(
          color: Colors.blue,
          alignment: Alignment(0, 0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 5.0, color: Colors.red, style: BorderStyle.solid),
                borderRadius:
                    BorderRadius.circular(20.0), //ได้ขอบมนเลขยิ่งมากขอบยิ่งมน
                gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.blue
                    ], //สีพื้นจะไล่สี ตย.นี้ เขียว->ฟ้า
                    begin: Alignment.topCenter), //ไล่สีจากบนลงล่าง
                color: Colors.blue[200]), //[200]=เฉดสี
            constraints: BoxConstraints.expand(width: 200.0),
            padding: EdgeInsets.all(50.0),
            margin: EdgeInsets.only(top: 40.0), //ขอบของbg
            alignment: Alignment.topCenter, //กำหนดตำแหน่งcontainer
            child: Text('Sun Container'),
          ),
        ),
      ), //ห้ามลืม body
    );
  }
}
