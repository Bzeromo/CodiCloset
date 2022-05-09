import 'package:flutter/material.dart';

// 앱 시작 부분
void main() => runApp(const MyApp());

// 시작 클래스, 머티리얼 디자인 앱 생성
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(), // 표시할 화면의 인스턴스
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  var _index = 0; // 페이지 인덱스
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: const Text(
          'CODICLOSET',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '$_index 페이지',
          style: const TextStyle(fontSize: 40),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _index = index; // 선택된 탭의 인덱스로 _index를 변경
          });
        },
        currentIndex: _index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'home',
              icon: Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'closet',
              icon: Icon(Icons.local_mall, color: Colors.black)
          ),
          BottomNavigationBarItem(
            label: 'feed',
              icon: Icon(Icons.insert_photo, color: Colors.black)
          ),
          BottomNavigationBarItem(
            label: 'mypage',
              icon: Icon(Icons.person, color: Colors.black)
          ),
        ]
      ),
    );
  }
}