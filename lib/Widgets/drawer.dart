import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: new ListView(




        children: <Widget>[




          //header
          new UserAccountsDrawerHeader(
            accountName: Text('Shreedhar Pandeya',
              style : TextStyle(
                color: Colors.white,
              ), ),
            accountEmail: Text('fa113n700@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/2.jpg'),
                //   child: Image(image:AssetImage('images/4.jpg')),
              ),
            ),

            decoration: new BoxDecoration(
              color: Colors.blueGrey,
            ),


          ),



          //body
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.purple,),
            ),
          ),
          InkWell(

            child: ListTile(
              title: Text('My account'),
              leading: Icon(Icons.person, color: Colors.purple,),
            ),
          ),
          InkWell(

            child: ListTile(
              title: Text('My orders'),
              leading: Icon(Icons.shopping_bag_sharp, color: Colors.purple,),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Categories'),
              leading: Icon(Icons.category, color: Colors.purple,),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.purple,),
            ),
          ),

          Divider(),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings, color: Colors.purple,),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help_rounded, color: Colors.purple,),
            ),
          ),

          InkWell(

            child: ListTile(
              title: Text('LogOut'),
              leading: Icon(Icons.login_outlined, color: Colors.purple,),
            )
            ,
          ),



        ],
      ),
    );
  }
}
