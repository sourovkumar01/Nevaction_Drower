import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
    return MaterialApp(
      home: HomeActivity()
    );
  }


}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar:AppBar(title:Text( 'First app'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        toolbarOpacity:1,
        toolbarHeight:100,
        titleSpacing: 10,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){}, icon: Icon(Icons.email))

        ],


      ),
floatingActionButton: FloatingActionButton(
  elevation: 5,

  child: Icon(Icons.add),
  backgroundColor: Colors.green,
  onPressed: (){},
),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: 0,

        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
        BottomNavigationBarItem(icon: Icon(Icons.comment),label:"comment"),
        BottomNavigationBarItem(icon: Icon(Icons.people_rounded),label:"profil"),
      ],),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child:UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text("SOUROV"),
              accountEmail: Text("sourovkumarshisir@gmail.com"),
              currentAccountPicture: Image.network(""),
            ),),
            ListTile(leading:Icon(Icons.home),title: Text('home'),),
            ListTile(leading:Icon(Icons.message),title: Text('message'),),
            ListTile(leading:Icon(Icons.comment),title: Text('Comment'),),


          ],
        )

      ),
    );

  }



}