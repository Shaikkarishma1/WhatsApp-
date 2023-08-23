import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id='screen_two';
  const ScreenTwo({Key? key}) : super(key: key);
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Color(0xff674abc),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
          child:ListView.builder(

            itemCount: 100,
              itemBuilder: (context,index){
    return ListTile(
    leading: CircleAvatar( backgroundImage:
    NetworkImage('https://picsum.photos/250?image=9'),),

    title: Text('shaik karishma'),
    onTap: (){
    Navigator.pushNamed(context, ScreenTwo.id);
    },
    );
    })
          )

    ],
      ),

    );
  }
}
