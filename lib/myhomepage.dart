import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          title: Text("Barre de navigation dynamique"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,

          //debut de la tabBar
          bottom: const TabBar(
              tabs: <Widget>[
                Tab( icon: Icon(Icons.account_circle),),
                Tab(icon: Icon(Icons.message),),
                Tab(icon: Icon(Icons.settings),)
              ]),
        ),
        drawer: const Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  child: Text('Entete du drawer')
              ),
              SizedBox(height: 30,),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text('Discussions'),
                leading: Icon(Icons.message),
              ),
              ListTile(
                title: Text('Parametres'),
                leading: Icon(Icons.settings),
              )
            ],
          ),
        ),

        body: const TabBarView(
            children: <Widget>[
              Center(child: Text('data1')),
              Center(child: Text('data2')),
              Center(child: Text('data3')),


            ]
        ),
      ),
    );
  }
}
