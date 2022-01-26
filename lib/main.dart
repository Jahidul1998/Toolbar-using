import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car),),
                Tab(icon: Icon(Icons.directions_transit),),
                Tab(icon: Icon(Icons.directions_bike),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car,size: 300,color: Colors.red,),
              Icon(Icons.directions_transit,size: 300,color: Colors.deepOrange,),
              Icon(Icons.directions_bike,size: 300,color: Colors.deepOrange,),
            ],
          ),
        ),
      ),
    );
  }
}
