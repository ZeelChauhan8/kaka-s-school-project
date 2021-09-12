import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakas_school/main.dart';
import 'package:kakas_school/pages/search.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        drawer: Drawer_Info(),
          backgroundColor: Colors.cyan[50],
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text("Dashboard"),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_active_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Search()));
                },
              ),
              Container(
                margin: EdgeInsets.all(8),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage("images/shyam.jpg")),
                ),
              )
            ],
          ),
        body:ListView(
            padding: EdgeInsets.all(4),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top:10,right:10,left:10),
                  child: Text(
                    "Welcome - KAKA's INTERNATIONAL SCHOOL | Super Admin",
                    style: TextStyle(
                        color: Colors.blueAccent, fontWeight: FontWeight.bold,overflow:TextOverflow.visible,fontSize: 13),
                  )),
              Container(
                  height: 140,
                  margin: EdgeInsets.only(top:10,right:10,left:10),
                  child:ListView(
                      scrollDirection: Axis.horizontal,
                      children:[
                        Container(
                            padding: EdgeInsets.all(10),
                            //color:Colors.white,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.deepPurpleAccent),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height:130,
                            width: 250,
                            margin:EdgeInsets.all(10),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      Text("Students ",style:TextStyle(color:Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),),
                                      Text("Total Students",style:TextStyle(color:Colors.grey))
                                    ]
                                ),
                                Text("207",style:TextStyle(color:Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontSize: 35))
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.all(10),
                            //color:Colors.white,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.deepPurpleAccent),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height:130,
                            width: 250,
                            margin:EdgeInsets.all(10),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      Text("Teachers ",style:TextStyle(color:Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),),
                                      Text("Total Teachers",style:TextStyle(color:Colors.grey))
                                    ]),
                                Text("13",style:TextStyle(color:Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontSize: 30))
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.all(10),
                            //color:Colors.white,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.deepPurpleAccent),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height:130,
                            width: 250,
                            margin:EdgeInsets.all(10),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      Text("Parents ",style:TextStyle(color:Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),),
                                      Text("Total Parents",style:TextStyle(color:Colors.grey))
                                    ]),
                                Text("204",style:TextStyle(color:Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontSize: 30))
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.all(10),
                            //color:Colors.white,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.deepPurpleAccent),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height:130,
                            width: 250,
                            margin:EdgeInsets.all(10),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      Text("Staffs ",style:TextStyle(color:Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),),
                                      Text("Total Staffs",style:TextStyle(color:Colors.grey))
                                    ]),
                                Text("16",style:TextStyle(color:Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontSize: 30))
                              ],
                            )
                        ),

                      ])
              ),
              Container(
                  margin: EdgeInsets.only(top:10,right:10,left:10),
                  child: Text(
                    "Income & Expenses for Sept 2021 ",
                    style: TextStyle(
                        color: Colors.blueAccent, fontWeight: FontWeight.bold,overflow:TextOverflow.visible,fontSize: 13),
                  )),
              Container(

              )
            ]),
      );


  }
}