import 'package:flutter/material.dart';
import 'package:whatsappcreation/screen_two.dart';

class HomeScreen  extends StatefulWidget {
  static const String id='home_screen';
  const HomeScreen({Key? key}):super(key:key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Navigation Drawer'),
            backgroundColor: Color(0xff674abc),
          ),
        
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color:Color(0xff674abc)
                  ),
                    currentAccountPicture:Image(image: AssetImage('assets/sks.jpeg'),),

                    accountName: Text('karish irfan'),
                    accountEmail: Text('karishirfan@gmail.com')
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('page 1'),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.calculate),
                  title: Text('page 2'),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout_outlined),
                  title: Text('Logout'),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                )

              ],
            ),
          ),

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) =>ScreenTwo())
                    // );
                  },
                  child: Text('screen 1'),
                ),
              )

            ],
          ),
        );
        
                }
}
