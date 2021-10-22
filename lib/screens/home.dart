import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'recruit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _alarmOn = false;

  void  pressedAlarm() {
    setState(() {
      if (_alarmOn) {
        _alarmOn = false;
      } else {
        _alarmOn = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,  //가운데로 정렬
          children: const [
            Text("취미를 골라보세요", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            Text("알람 기능을 사용하세요", style: TextStyle(color: Colors.blueGrey, fontSize: 16),),
          ],),
        const Padding(padding: EdgeInsets.all(10.0)),
        IconButton(
          onPressed: pressedAlarm,
          icon: (_alarmOn ? Icon(Icons.alarm_on) : Icon(Icons.alarm_off)),
          color: Colors.red,
          iconSize: 30,
        ),
        Text('알림', style: TextStyle(color: Colors.red, fontSize: 18))
      ],);

    var buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => RecruitPage())
                );
              },
              icon: Icon(Icons.run_circle_outlined),
              iconSize: 50,
            ),
            Text('스포츠', style: TextStyle(fontSize: 18)),
            const Padding(padding: EdgeInsets.all(25.0)),
            IconButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => RecruitPage())
                  );
                },
                icon: Icon(Icons.sports_esports_outlined),
                iconSize: 50,
            ),
            Text('E-SPORTS', style: TextStyle(fontSize: 18)),
            const Padding(padding: EdgeInsets.all(25.0)),
            IconButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => RecruitPage())
                  );
                },
                icon: Icon(Icons.music_note),
                iconSize: 50,
            ),
            Text('음악', style: TextStyle(fontSize: 18)),
          ],),
        const Padding(padding: EdgeInsets.all(25.0)),
        Column(children: [
          IconButton(
              onPressed: (){
                Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => RecruitPage())
                );
              },
              icon: Icon(Icons.image),
              iconSize: 50,
          ),
          Text('드로잉', style: TextStyle(fontSize: 18)),
          Padding(padding: EdgeInsets.all(25.0)),
          IconButton(
              onPressed: (){
                Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => RecruitPage())
                );
              },
              icon: Icon(Icons.menu_book),
              iconSize: 50,
          ),
          Text('독서 / 스터디', style: TextStyle(fontSize: 18)),
          Padding(padding: EdgeInsets.all(25.0)),
          IconButton(
              onPressed: (){
                Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => RecruitPage())
                );
              },
              icon: Icon(Icons.explore),
              iconSize: 50,
          ),
          Text('여행', style: TextStyle(fontSize: 18)),
        ],)
      ],
    );

    var textSection = Text("GNU HOBBY 어플입니다");

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column( //세로로 칸을 나누고 칸에 들어가는 위젯을 children 단위로 넣어줌.
        children: [
          const Padding(padding: EdgeInsets.all(15.0)),
          titleSection,
          const Padding(padding: EdgeInsets.all(20.0)),
          buttonSection,
          const Padding(padding: EdgeInsets.all(40.0)),
          textSection
        ],
      ),
    );
  }
}