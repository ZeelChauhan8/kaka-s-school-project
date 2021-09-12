import 'package:flutter/material.dart';
import 'package:kakas_school/main.dart';
import 'package:kakas_school/pages/dashboard.dart';
class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final _email=TextEditingController();
  final _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(title:Text("Login Page"),backgroundColor:Colors.cyan),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('images/logo.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
                validator: (val)
                {
                  if(val!.isEmpty){
                    return "Email id cannot be null";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(

                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Password',
                    suffixIcon: IconButton(icon:Icon(Icons.visibility),onPressed: (){
                      print("X");
                    },),
                    hintText: 'Enter secure password'),
                validator: (val)
                {
                  if(val!.isEmpty){
                    return "Password cannot be null";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: FlatButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                color: Colors.cyan,
                splashColor: Colors.blueAccent,
                hoverColor:Colors.cyan[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                    if(_email.text=="zeel123@gmail.com" && _password.text=="zeel")
                      {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
                      }
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}
