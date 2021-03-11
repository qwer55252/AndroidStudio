import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Orientation Demo';

    return MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

// OrientationBuilder : 부모 위젯에 사용 가능한 너비와 높이를 비교하여 현재 방향을 계산하는 위젯
class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key key, this.title}) : super(key: key);
  // ???
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // orientation == Orientation.portrait 이 True면 2 False면 3
            // crossAxisCount : 스크롤가능한 2D위젯을 크로스축(x축)으로 나열하는 수
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,

            // 일덱스를 표시하는 100개의 리스트를 만듬
            // List<Widget> List.generate(int length, Widget Function(int) generator,{bool growable = true})
            // 100번 뒤에 함수를 호출
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Grid list $index', // 화면에 띄울 각 Grid list의 text
                  style: Theme.of(context).textTheme.headline, // Text style 코드/headline에 맞는 필체를 사용해줌
                ),
              );
            }),
          );
        },
      ),
    );
  }
}