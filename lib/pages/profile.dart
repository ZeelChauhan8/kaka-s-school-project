import 'package:flutter/material.dart';
import 'package:kakas_school/main.dart';
import 'package:kakas_school/pages/login.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return Scaffold(
        drawer: displayMobileLayout
            ? const Drawer_Info()
            : null,
      appBar: AppBar(title:Text("Profile"),backgroundColor: Colors.cyan,
      actions: [
        IconButton(icon:Icon(Icons.login),onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Login_Page()));
        },),
      ],
      ),
      body:ListView(
        children:[
          Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
              color:Colors.cyan[100],
            ),
            padding: EdgeInsets.all(20),
            height:MediaQuery.of(context).size.height/3,
            child:Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height:100,
                    width: 100,
                    decoration: BoxDecoration(
                      image:const DecorationImage(
                        fit: BoxFit.fill,
                        image:AssetImage('images/shyam.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(height:10),
                  Text("Zeel Chauhan",style:TextStyle(color:Colors.deepPurple,fontSize: 20)),
                ],
              ),
            )

          )
        ]
      )
    );
  }
}
