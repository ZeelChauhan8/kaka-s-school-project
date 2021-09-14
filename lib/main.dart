import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kakas_school/pages/dashboard.dart';
import 'package:kakas_school/pages/login.dart';
import 'package:kakas_school/pages/profile.dart';
import 'package:kakas_school/pages/search.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:kakas_school/pages/studentlist.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kaka's International School",
      home: Splash_screen()));
}

class Splash_screen extends StatefulWidget {
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => MyApp())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "images/logo.png",
            height: 170,
            width: 180,
          ),
          Text(
            "KaKa's INTERNATIONAL SCHOOL",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
          CircularProgressIndicator(
            color: Colors.green,
          ),
        ],
      )),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _page=[Dashboard(),Search(),Student_List(),Profile()];
  int _SelectedIndex=0;
  late bool permanentlyDisplay;
  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return Row(
      children: [
        if (!displayMobileLayout)
          const Drawer_Info(),
        VerticalDivider(
          width: 1,
          thickness: 1,
        ),
        Expanded(
          child: Scaffold(
              drawer: displayMobileLayout
                  ? const Drawer_Info()
                  : null,

            body: _page[_SelectedIndex],
              bottomNavigationBar: ConvexAppBar(
              backgroundColor: Colors.cyan,
              activeColor: Colors.white,
              style: TabStyle.reactCircle,
              items:[
                TabItem(icon: Icon(Icons.dashboard,color: Colors.red,),title: "DashBoard",),
                TabItem(icon: Icon(Icons.search,color: Colors.deepOrange,),title: "Search",),
                TabItem(icon: Icon(Icons.list_alt,color: Colors.blue,),title: "StudentList",),
                TabItem(icon: Icon(Icons.supervised_user_circle,color: Colors.cyanAccent,),title: "Profile",)
                 ],
              onTap: (setval){
                  setState(() {
                  _SelectedIndex=setval;
                  });
              },
              )
            ),
          ),
      ],
    );
  }
}

class Drawer_Info extends StatelessWidget {
  // const AppDrawer({@required this.permanentlyDisplay, Key key})
  //     : super(key: key);
  const Drawer_Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 20,
        child: Container(
          color:Colors.cyan[50],
          child: ListView(
              children: <Widget>[
            Container(
                height: 120,
                alignment: Alignment.topLeft,
                color: Colors.cyan[200],
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        child: Image.asset(
                          'images/logo.png',
                          height: 50,
                        )),
                  ],
                )),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("DASHBOARD",
                  style: TextStyle(fontSize: 15, color: Colors.cyan)),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
              },
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.admin_panel_settings_outlined),
              title: Text(
                "ADMIN SECTION",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "ADMIN SECTION 1",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "ADMIN SECTION 2",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.info_outline),
              title: Text(
                "STUDENT iNFO",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "STUDENT CATEGORY",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "ADD STUDENT",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "STUDENT LIST",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                  onTap: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Student_List()));
                  },
                ),
                ListTile(
                  title: Text(
                    "STUDENT ATTENDENCE",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "STUDENT ATTENDENCE REPORT",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "STUDENT WISE ATTENDANCE",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "STUDENT GROUP",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "STUDENT PROMOTE",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.cast_for_education_outlined),
              title: Text(
                "ACADEMICS ",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Select Course",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "ADMIN Academic 2",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.upload_outlined),
              title: Text(
                "UPLOAD",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Student Document",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Result ",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.payment_outlined),
              title: Text(
                "FEES COLLECTION",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Student Fees",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Paid Fees Student",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.account_circle_outlined),
              title: Text(
                "ACCOUNTS",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "ADMIN Account 1",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "ADMIN Account 2",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.storage_outlined),
              title: Text(
                "HUMAN RESOURCES",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "HR 1",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "HR 2",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.leave_bags_at_home_outlined),
              title: Text(
                "LEAVE",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Student Leave Details",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Max Leave of Student",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.account_balance_outlined),
              title: Text(
                "EXAMINATION",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Student Exam",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Exam Result",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Divider(),
            ExpansionTile(
              backgroundColor: Colors.blue[100],
              textColor: Colors.black,
              leading: Icon(Icons.home_work_outlined),
              title: Text(
                "HOMEWORK",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "ADMIN SECTION 1",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "ADMIN SECTION 2",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}



