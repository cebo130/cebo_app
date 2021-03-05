import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Drawer App',
    home: HomeScreen(),
  ));
}



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Image.asset('assets/two black bold.png'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Text('+'),
        backgroundColor: Colors.black,
      ),

      appBar: AppBar(

        title: Text('Ryza_Apps.Inc',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.blueGrey,
        elevation: 100,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.grey,
                    Colors.blueGrey
                  ])
              ),
              child: Container(
                child: Column(
                  children: [
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      child: Image.asset('assets/dream icon.png',width: 100,height: 100,),
                    ),
                    Text('Builderz',style: TextStyle(color: Colors.black, fontSize: 28.0),)
                  ],
                ),
              ),
            ),
            CustomListTile(Icons.account_circle,'My Profile',()=>{}),
            CustomListTile(Icons.person_add,'Contractors',()=>{}),
            CustomListTile(Icons.notifications_active,'Notifications',()=>{}),
            CustomListTile(Icons.settings,'Settings',()=>{}),
            CustomListTile(Icons.lock,'Log Out',()=>{}),
          ],

        ),
      ),
    );

  }

}

class CustomListTile extends StatelessWidget{
  IconData icon;
  String text;
  Function onTap;



  CustomListTile(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
        ),
        child: InkWell(
          splashColor: Colors.blueGrey,
          onTap: onTap,
          child: Container(
            height: 50,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text,style: TextStyle(
                          fontSize: 20.0
                      ),),
                    ),
                  ],
                ),



                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ),
    );
  }

}