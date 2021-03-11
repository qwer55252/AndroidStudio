// <탭 만드는 >
// 1. Create a TabController.
// 2. Create the tabs.
// 3. Create content for each tap

import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          // Now that you have tabs, display content when a tab is selected.
          // For this purpose, use the TabBarView widget.
          body: TabBarView(
            children: [
              Icon(Icons.directions_car, size: 40.0, color: Colors.limeAccent),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),// 각각의 탭에 가운데에 위
            ],
          ),
        ),
      ),
    );
  }
}

